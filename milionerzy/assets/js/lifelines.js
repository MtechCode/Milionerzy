function askAudience() {
    if (lifelinesUsed.audiencePoll) {
        ShowNotification(lifelineUsedText, RedColor);
        return;
    }

    lifelinesUsed.audiencePoll = true; // Użycie koła ratunkowego
    const answerOptions = [A, B, C, D]; 
    const correctAnswerIndex = answerOptions.indexOf(currentQuestion.poprawna_odpowiedz);
    const randomValue = Math.random();
    const showCorrect = randomValue < AskAudiencePercentage;

    let highlightIndex;
    if (showCorrect) {
        highlightIndex = correctAnswerIndex;
        console.log("To jest dobra odp")
        ShowNotification(`${AskAudienceText} ${currentQuestion.poprawna_odpowiedz}`, BlueColor);
    } else {
        // Wybierz losową niepoprawną odpowiedź
        const incorrectIndices = [0, 1, 2, 3].filter(index => index !== correctAnswerIndex);
        highlightIndex = incorrectIndices[Math.floor(Math.random() * incorrectIndices.length)];
        console.log("To jest zla odp")
        ShowNotification(`${AskAudienceText} ${answerOptions[highlightIndex]}`, BlueColor);
    }

    updateLifelineStatus(); // Zaktualizuj status po użyciu
}


function fiftyFifty() {
    if (lifelinesUsed.fiftyFifty) {
        ShowNotification(lifelineUsedText, RedColor);
        return;
    }

    lifelinesUsed.fiftyFifty = true; // Użycie koła ratunkowego
    const correctAnswerIndex = [A, B, C, D].indexOf(currentQuestion.poprawna_odpowiedz);
    let incorrectAnswers = [0, 1, 2, 3].filter(index => index !== correctAnswerIndex);
    // Losujemy 2 niepoprawne odpowiedzi do ukrycia
    const hiddenIndexes = [];
    while (hiddenIndexes.length < 2) {
        const randomIndex = incorrectAnswers.splice(Math.floor(Math.random() * incorrectAnswers.length), 1)[0];
        hiddenIndexes.push(randomIndex);
    }

    hiddenIndexes.forEach(index => {
        document.querySelector(`.answer:nth-child(${index + 1})`).style.visibility = 'hidden'; // Ukrycie odpowiedzi
    });
    updateLifelineStatus(); // Zaktualizuj status po użyciu
}


// Funkcja zmiany pytania
function changeQuestion() {
    if (lifelinesUsed.switch) {
        ShowNotification(lifelineUsedText, RedColor);
        return;
    }
    lifelinesUsed.switch = true; // Użycie koła ratunkowego
    loadQuestion();
    updateLifelineStatus(); // Zaktualizuj status po użyciu
}


function phoneAFriend() {
    if (lifelinesUsed.phoneAFriend) {
        ShowNotification(lifelineUsedText, RedColor);
        return;
    }

    lifelinesUsed.phoneAFriend = true; // Oznaczenie jako użyte
    const answerOptions = [A, B, C, D]; 
    const correctAnswerIndex = answerOptions.indexOf(currentQuestion.poprawna_odpowiedz);
    const randomValue = Math.random();
    const showCorrect = randomValue < PhoneAFriendPercentage;

    let highlightIndex;
    if (showCorrect) {
        highlightIndex = correctAnswerIndex;
        console.log("To jest dobra odp")
        ShowNotification(`${PhoneAFriendText} ${currentQuestion.poprawna_odpowiedz}`, BlueColor);
    } else {
        // Wybierz losową niepoprawną odpowiedź
        const incorrectIndices = [0, 1, 2, 3].filter(index => index !== correctAnswerIndex);
        highlightIndex = incorrectIndices[Math.floor(Math.random() * incorrectIndices.length)];
        console.log("To jest zla odp")
        ShowNotification(`${PhoneAFriendText} ${answerOptions[highlightIndex]}`, BlueColor);
    }

    updateLifelineStatus(); // Zaktualizuj status po użyciu
}

function updateLifelineStatus() {
    document.getElementById('audiencePollStatus').textContent = lifelinesUsed.audiencePoll ? "0/1" : "1/1";
    document.getElementById('fiftyFiftyStatus').textContent = lifelinesUsed.fiftyFifty ? "0/1" : "1/1";
    document.getElementById('phoneAFriendStatus').textContent = lifelinesUsed.phoneAFriend ? "0/1" : "1/1";
    document.getElementById('switchStatus').textContent = lifelinesUsed.switch ? "0/1" : "1/1";

}