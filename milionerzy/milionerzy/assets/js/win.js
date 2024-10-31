function celebrateWin() {
    if (typeof confetti !== 'function') {
        console.error("Confetti library not loaded correctly");
        return;
    }

    // Show confetti
    confetti({
        particleCount: 100,
        spread: 70,
        origin: { y: 0.6 }
    });

    // Show the win message
    showWinMessage();
}

function showWinMessage() {
    const winMessage = document.createElement('div');
    winMessage.id = 'winMessage';
    winMessage.innerText = "WYGRAŁEŚ 1 000 000 ZŁ!";
    winMessage.style.position = 'fixed';
    winMessage.style.top = '50%';
    winMessage.style.left = '50%';
    winMessage.style.transform = 'translate(-50%, -50%)';
    winMessage.style.fontSize = '36px';
    winMessage.style.color = 'gold';
    winMessage.style.background = '#1f8ef1';
    winMessage.style.padding = '20px';
    winMessage.style.borderRadius = '10px';
    winMessage.style.zIndex = '1000';
    document.body.appendChild(winMessage);
    console.log("Win message added to the DOM.");
}

function removeWinMessage() {
    const winMessage = document.getElementById('winMessage');
    if (winMessage) {
        winMessage.parentNode.removeChild(winMessage);
        console.log("Win message removed successfully.");
    } else {
        console.warn("Win message element not found.");
    }
}