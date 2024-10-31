# Milionerzy - Gra Wzorowana na "Milionerzy"

### Opis Projektu

"Milionerzy" to gra wzorowana na popularnym teleturnieju "Milionerzy". Projekt jest tworzony jako praca edukacyjna, mająca na celu rozwijanie umiejętności programowania oraz budowy aplikacji webowych. Aplikacja jest stworzona z użyciem XAMPP, co oznacza, że korzysta z technologii PHP, MySQL, HTML, CSS oraz JavaScript do zapewnienia pełnej funkcjonalności serwera i klienta.

### Technologie Wykorzystane w Projekcie
- **PHP** - Obsługuje logikę serwera, komunikację z bazą danych, oraz interakcje gracza.
- **MySQL** - Przechowuje pytania, odpowiedzi, a także statystyki użytkowników.
- **HTML/CSS** - Użyte do zaprojektowania przejrzystego i responsywnego interfejsu użytkownika.
- **JavaScript** - Dodaje interaktywność, kontroluje przebieg gry oraz zarządza żądaniami asynchronicznymi.
- **XAMPP** - Lokalny serwer używany do hostowania projektu w czasie tworzenia i testowania.

### Funkcjonalności
1. **Losowe pytania z bazy danych**: Pytania są losowane z bazy danych MySQL z zachowaniem zróżnicowanych kategorii, które zapewniają odpowiednią różnorodność treści.
2. **Odpowiedzi wielokrotnego wyboru**: Każde pytanie posiada cztery możliwe odpowiedzi, z czego tylko jedna jest poprawna.
3. **Bezpieczeństwo danych**: Projekt używa podstawowych technik ochrony przed wstrzyknięciami SQL oraz odpowiedniego filtrowania danych wejściowych.
4. **Intuicyjny interfejs**: Przejrzysty i prosty w obsłudze interfejs, który prowadzi gracza przez wszystkie etapy rozgrywki.
5. **System pomocy w grze**: Gracz ma do dyspozycji trzy koła ratunkowe, które mogą pomóc w znalezieniu poprawnej odpowiedzi, podobnie jak w oryginalnym teleturnieju.

### Struktura Projektu
- **index.php**: Strona główna, skąd można rozpocząć grę.
- **assets/js/script.js** oraz **assets/js/config.js**: Zawierają logikę backendowa aplikacji, obsługują interakcje użytkownika.
- **assets/css/style.css**: Plik stylów odpowiedzialny za wygląd i responsywność strony.
- **assets/images/logo.png**: Logo projektu.
- **api.php**: Plik połączenia z bazą danych, obsługujący zapytania SQL.

### Bezpieczeństwo
- **Walidacja danych użytkownika**: Wszystkie dane wejściowe są weryfikowane i filtrowane przed użyciem w zapytaniach SQL, aby zapobiec atakom SQL Injection.
- **Uniknięcie konfliktów przycisków**: Wprowadzono unikalne nazwy dla elementów UI, aby unikać potencjalnych konfliktów, co poprawia bezpieczeństwo i stabilność aplikacji.

### Wymagania Systemowe
- **XAMPP** (lub alternatywny serwer wspierający PHP i MySQL).
- **Przeglądarka internetowa** wspierająca JavaScript.

### Plusy Projektu
- **Edukuje w zakresie tworzenia dynamicznych aplikacji webowych**.
- **Zawiera wszystkie elementy popularnego teleturnieju "Milionerzy", w tym koła ratunkowe**.
- **Dobrze zorganizowana struktura kodu** ułatwiająca modyfikacje i dodawanie nowych funkcji.
- **Używa prostych technik zabezpieczeń**, dzięki czemu aplikacja jest stosunkowo odporna na podstawowe zagrożenia.

### Jak Uruchomić Projekt
1. Pobierz projekt z repozytorium GitHub.
2. Skonfiguruj lokalny serwer XAMPP.
3. Umieść pliki projektu w folderze `htdocs`.
4. Stwórz bazę danych w MySQL i zaimportuj plik `milionerzy.sql` znajdujący się w repozytorium.
5. Odpal aplikację poprzez `http://localhost/milionerzy` w przeglądarce.

### Przyszłe Ulepszenia
- **Rozszerzenie bazy pytań**: Dodanie większej ilości kategorii i pytań.
- **Lepsze techniki zabezpieczeń**: Implementacja lepszej ochrony przed CSRF i XSS.
- **Integracja z API**: Możliwość zdobywania statystyk przez graczy i porównywanie wyników.

### Kontakt
Jeśli masz jakieś pytania lub sugestie dotyczące projektu, zapraszam do kontaktu przez GitHub.
