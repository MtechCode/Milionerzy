// Funkcja od timera
function startTimer() {
    let timeLeft = 30; // Time to give answer (in sec)
    setTimerTo(timeLeft)
    // Czyszczenie poprzedniego licznika, jeśli istnieje
    if (timerInterval) {
        clearInterval(timerInterval);  // Zatrzymaj poprzedni licznik
    }

    // Ustawienie nowego licznika
    timerInterval = setInterval(() => {
        timeLeft--;  // Zmniejsza czas
        document.getElementById('timer').textContent = `${TimerText} ${timeLeft} ${TimerText2}`;  // Aktualizacja czasu z napisem

        // Migotanie timera, gdy pozostało 5 sekund
        const timerElement = document.getElementById('timer');
        if (timeLeft <= 5) {
            timerElement.classList.toggle('flash'); // Dodaje klasę flash, aby włączyć efekt migotania
            timerElement.style.color = 'red'; // Zmiana koloru na czerwony
        } else {
            timerElement.style.color = 'white'; // Przywraca kolor tekstu
        }

        if (timeLeft <= 0) {
            stopFlashing();
            timerElement.style.color = 'white'; // Przywraca kolor tekstu
            clearInterval(timerInterval);  // Zatrzymaj licznik, jeśli czas się skończy
            TimeEnd(); // Funkcja kończąca grę
        }
    }, 1000); // Odliczanie co sekundę
}

// Function to stop the timer
function stopTimer() {
    if (timerInterval) {
        stopFlashing();
        clearInterval(timerInterval); // Clear the timer interval
        timerInterval = null; // Reset timerInterval to prevent multiple clears
    }
}

function setTimerTo(Time) {
    document.getElementById('timer').textContent = `${TimerText} ${Time} ${TimerText2}`; // Update the timer display
}

// Function to stop the flashing effect
function stopFlashing() {
    const timerElement = document.getElementById('timer');
    timerElement.classList.remove('flash'); // Remove the flash class
    timerElement.style.color = 'white'; // Reset the text color
}
