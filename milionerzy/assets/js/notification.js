function ShowNotification(message, color = GreenColor) { // Domyślny kolor to zielony
    // Tworzenie elementu powiadomienia
    const notification = document.createElement("div");
    notification.className = "notification";
    notification.textContent = message;
    notification.style.backgroundColor = color; // Ustawia tło powiadomienia na zadany kolor

    // Dodawanie powiadomienia do kontenera
    document.getElementById("notificationContainer").appendChild(notification);

    // Pokaż powiadomienie
    setTimeout(() => {
        notification.style.opacity = 1; // Ustawia widoczność
        notification.style.transform = "translateY(0)"; // Przesunięcie do normalnej pozycji
    }, 10); // Krótkie opóźnienie, aby animacja zadziałała

    // Usunięcie powiadomienia po 3 sekundach
    setTimeout(() => {
        notification.style.opacity = 0; // Zmniejsza widoczność
        notification.style.transform = "translateY(-20px)"; // Przesunięcie w górę
        setTimeout(() => {
            notification.remove(); // Usuwa powiadomienie z DOM
        }, 500); // Czas na zakończenie animacji
    }, 3000); // Czas wyświetlania powiadomienia
}

