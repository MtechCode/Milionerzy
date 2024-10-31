//DONT CHANGE IF YOU DONT KNOW WHAT ARE YOU DOING
let currentQuestion = null; // Store current question
let timerInterval;
let ApiLocation = "http://localhost/milionerzy/assets/sql/api.php";
let CurrentQuestionIndex = 1; // Store current Q index
let answerselected = false;
let score = 0; // Store current score
let maxquestions = 12; // Dont set to more than 12
const questionValues = [500, 1000, 2000, 5000, 10000, 20000, 40000, 75000, 125000, 250000, 500000, 1000000]; // kwoty
const prizeListItems = document.querySelectorAll('.prize-list li');
let A = "A";
let B = "B";
let C = "C";
let D = "D";
let RedColor = "#f44336";
let GreenColor = "#4CAF50";
let BlueColor  = "#2196F3";


let lifelinesUsed = { //Table for chcecking lifelines
    audiencePoll: false,
    fiftyFifty: false,
    switch: false,
    phoneAFriend: false
};



// Text Config
let currency = "zł";
let TimerText = "Pozostały czas: ";
let TimerText2 = " sec";
let lifelineUsedText = "To koło ratunkowe zostało już użyte.";
let AskAudienceText = "Publicznosc zaglosowala na:";
let PhoneAFriendText = "Twój przyjaciel sugeruje odpowiedź:";
let GameLose = "Niestety, to błędna odpowiedź. Gra skończona.";
let GoodAnswer = "Brawo! To poprawna odpowiedź.";
let GameFinished = "Gratulacje! Ukończyłeś grę.";
let GameEndTime = "Czas się skończył! Gra zakończona.";
let ErrorNoQDatabase = "Brak pytań w tej kategorii.";
let ErrorLoadingQ = "Błąd: pytanie nie zostało załadowane.";
let ArleadyAnswered = "Juz odpowiedziales na to pytanie!"



//
let AskAudiencePercentage  = 0.8;
let PhoneAFriendPercentage  = 0.8;