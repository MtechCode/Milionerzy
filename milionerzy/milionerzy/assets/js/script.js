// document.addEventListener('DOMContentLoaded', function () {

// });

async function loadQuestion() {
    try {
        let AnswID = CurrentQuestionIndex * 100;
        console.log(AnswID)
        const response = await fetch(`${ApiLocation}?category=${AnswID}`, {
            method: 'GET',
            headers: {
                'Authorization': 'Bearer nielubimydisa',
                'Content-Type': 'application/json'
            }
        });

        if (!response.ok) {  // Check for response errors
            let errorMessage = "Error loading question";  // Default error message
            if (response.status === 401) errorMessage = "Unauthorized access";
            else if (response.status === 404) errorMessage = "No questions found for this category";
            else if (response.status === 400) errorMessage = "Invalid category ID";
            else if (response.status === 500) errorMessage = "Server error";
            throw new Error(errorMessage);
        }

        const data = await response.json();

        // Reset colors, events, and visibility for answer buttons
        resetLifelines();
        resetAnswerVisibility();
        startTimer(); // Start the timer for each new question

        if (data.length > 0) {
            currentQuestion = data[0]; 
            document.querySelector('.question').textContent = currentQuestion.pytanie;
            document.querySelector('.answer:nth-child(1)').textContent = "A: " + currentQuestion.odpowiedz_a;
            document.querySelector('.answer:nth-child(2)').textContent = "B: " + currentQuestion.odpowiedz_b;
            document.querySelector('.answer:nth-child(3)').textContent = "C: " + currentQuestion.odpowiedz_c;
            document.querySelector('.answer:nth-child(4)').textContent = "D: " + currentQuestion.odpowiedz_d;

            // Set question number and score
            const scoreDisplay = document.getElementById('scoreDisplay');
            scoreDisplay.textContent = `${questionValues[CurrentQuestionIndex-1]} ${currency} - ${CurrentQuestionIndex} / ${maxquestions}`;
        } else {
            throw new Error("No questions found in the database.");
        }
    } catch (error) {
        console.error("Error loading question:", error);
        ShowNotification("Error loading question: " + error.message, RedColor);
    }
}


function checkAnswer(answer) {
    // Sprawdzenie, czy pytanie zostało załadowane
    if (!currentQuestion) {
        ShowNotification(ErrorLoadingQ, RedColor);
        return;
    }
    console.log(answerselected)
    if (answerselected) {
        ShowNotification(ArleadyAnswered, RedColor);
        return;
    }


    answerselected = true

    const correctAnswer = currentQuestion.poprawna_odpowiedz; // Pobranie poprawnej odpowiedzi
    const isCorrectAnswer = answer.toUpperCase() === correctAnswer.toUpperCase(); 
    const answers = document.querySelectorAll('.answer'); 
    
    stopTimer()
    if (isCorrectAnswer) {
        // Podświetlenie poprawnej odpowiedzi
        answers.forEach(btn => {
            if (btn.textContent.startsWith(correctAnswer)) {
                btn.classList.add('correct');
            }
        });
        ShowNotification(GoodAnswer, GreenColor);
        

        setTimeout(() => {
            // Dodanie punktów w zależności od numeru pytania
            score += (CurrentQuestionIndex + 1) * 100; 

            // Zwiększenie indeksu pytania
            AddPoints()

            // Resetowanie klas odpowiedzi
            answers.forEach(btn => {
                btn.classList.remove('correct', 'wrong');
            });

            // Sprawdzanie, czy to było ostatnie pytanie
            if (CurrentQuestionIndex <= 12) {
                highlightCurrentPrize();
                // Zaktualizuj wyświetlaną kwotę nagrody
                document.getElementById('scoreDisplay').innerText = prizeListItems[CurrentQuestionIndex - 1].innerText;
                answerselected = false
                loadQuestion(); // Ładowanie następnego pytania
            } else {
                document.getElementById("startModal").style.display = "none";
                celebrateWin()
                setTimeout(() => {
                    // console.log(document.getElementById('winMessage')); // Should not be null if the element exists
                   removeWinMessage()
                   resetGame(); // Zrestartuj grę po zakończeniu
               }, 5000); 
                // ShowNotification(GameFinished, GreenColor);
            }
        }, 2500); // 2,5 sekundy opóźnienia
    } else {
        stopTimer()
        ShowNotification(GameLose, RedColor);
        // Podświetlenie błędnej odpowiedzi i poprawnej odpowiedzi
        answers.forEach(btn => {
            if (btn.textContent.startsWith(correctAnswer)) {
                btn.classList.add('correct');
            } else {
                btn.classList.add('wrong');
            }
        });
        
        // Restart gry
        setTimeout(() => {
            resetGame(); 
        }, 2000); 
    }
}

// Funkcja resetująca grę
function resetGame() {
    CurrentQuestionIndex = 1;
    score = 0;
    answerselected = false
    lifelinesUsed = {
        audiencePoll: false,
        fiftyFifty: false,
        switch: false,
        phoneAFriend: false
    };
    stopTimer()
    resetLifelines() 
    updateLifelineStatus()
    highlightCurrentPrize();
    showStartButton();
}


// Funkcja dodania punktów i przejścia do kolejnego pytania
function AddPoints() {
    CurrentQuestionIndex++;
}

// Funkcja resetująca widoczność odpowiedzi
function resetAnswerVisibility() {
    const answers = document.querySelectorAll('.answer');
    answers.forEach(answer => {
        answer.style.visibility = 'visible'; 
    });
}

// Funkcję resetującą używamy, aby zresetować kolory odpowiedzi.
function resetLifelines() {
    const answers = document.querySelectorAll('.answer');
    answers.forEach(answer => {
        answer.classList.remove('correct', 'wrong'); 
        answer.style.backgroundColor = ''; 
    });
}

// Funkcja podświetlania aktualnego pytania w tabeli
function highlightCurrentPrize() {
    prizeListItems.forEach((item, index) => {
        item.classList.remove('highlight');  
        if (index === CurrentQuestionIndex - 1) {  
            item.classList.add('highlight');  
        }
    });
}

function TimeEnd() { 
    ShowNotification(GameEndTime, RedColor);  // Wyświetla komunikat o zakończeniu gry
    setTimeout(() => {
        resetGame(); 
    }, 2000); 
}


function showStartButton() {
    document.getElementById("startModal").style.display = "flex";
}


// Dodawanie zdarzenia do przycisku
document.getElementById("playButton").addEventListener("click", function() {
    document.getElementById("startModal").style.display = "none";
    loadQuestion(); // Załaduj pierwsze pytanie
    highlightCurrentPrize();
});
