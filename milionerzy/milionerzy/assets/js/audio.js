// Function to play music
function playMusic(filePath) {
    // Stop any existing audio
    stopAllMusic();

    // Create a new audio object
    currentAudio = new Audio(filePath);
    currentAudio.play();
}

// Function to stop all music
function stopAllMusic() {
    if (currentAudio) {
        currentAudio.pause(); // Pause the audio
        currentAudio.currentTime = 0; // Reset the audio to the beginning
        currentAudio = null; // Clear the currentAudio reference
    }
}


// playMusic('assets/audio/example.mp3')
// stopAllMusic()