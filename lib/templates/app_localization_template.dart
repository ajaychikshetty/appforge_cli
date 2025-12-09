class LocalizationTemplates {
  // Supported languages with their codes
  static const Map<String, String> supportedLanguages = {
    // International Languages
    'en': 'English',
    'es': 'Spanish (Español)',
    'fr': 'French (Français)',
    'de': 'German (Deutsch)',
    'it': 'Italian (Italiano)',
    'pt': 'Portuguese (Português)',
    'ru': 'Russian (Русский)',
    'zh': 'Chinese (中文)',
    'ja': 'Japanese (日本語)',
    'ar': 'Arabic (العربية)',

    // Indian Languages
    'hi': 'Hindi (हिन्दी)',
    'bn': 'Bengali (বাংলা)',
    'te': 'Telugu (తెలుగు)',
    'mr': 'Marathi (मराठी)',
    'ta': 'Tamil (தமிழ்)',
    'gu': 'Gujarati (ગુજરાતી)',
    'kn': 'Kannada (ಕನ್ನಡ)',
    'ml': 'Malayalam (മലയാളം)',
    'pa': 'Punjabi (ਪੰਜਾਬੀ)',
    'or': 'Odia (ଓଡ଼ିଆ)',
  };

  // Generate l10n.yaml configuration
  static String generateL10nConfig(List<String> selectedLanguages) {
    return '''
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
synthetic-package: false
output-class: AppLocalizations
''';
  }

  // Generate English ARB file (template)
  static String generateEnglishArb() {
    return '''
{
  "@@locale": "en",
  "appTitle": "My App",
  "@appTitle": {
    "description": "The application title"
  },
  "welcome": "Welcome",
  "@welcome": {
    "description": "Welcome message"
  },
  "hello": "Hello",
  "@hello": {
    "description": "Greeting message"
  },
  "login": "Login",
  "@login": {
    "description": "Login button text"
  },
  "signup": "Sign Up",
  "@signup": {
    "description": "Sign up button text"
  },
  "email": "Email",
  "@email": {
    "description": "Email field label"
  },
  "password": "Password",
  "@password": {
    "description": "Password field label"
  },
  "username": "Username",
  "@username": {
    "description": "Username field label"
  },
  "phone": "Phone Number",
  "@phone": {
    "description": "Phone number field label"
  },
  "forgotPassword": "Forgot Password?",
  "@forgotPassword": {
    "description": "Forgot password link text"
  },
  "home": "Home",
  "@home": {
    "description": "Home screen title"
  },
  "profile": "Profile",
  "@profile": {
    "description": "Profile screen title"
  },
  "settings": "Settings",
  "@settings": {
    "description": "Settings screen title"
  },
  "logout": "Logout",
  "@logout": {
    "description": "Logout button text"
  },
  "save": "Save",
  "@save": {
    "description": "Save button text"
  },
  "cancel": "Cancel",
  "@cancel": {
    "description": "Cancel button text"
  },
  "delete": "Delete",
  "@delete": {
    "description": "Delete button text"
  },
  "edit": "Edit",
  "@edit": {
    "description": "Edit button text"
  },
  "search": "Search",
  "@search": {
    "description": "Search field placeholder"
  },
  "loading": "Loading...",
  "@loading": {
    "description": "Loading indicator text"
  },
  "error": "Error",
  "@error": {
    "description": "Error message title"
  },
  "success": "Success",
  "@success": {
    "description": "Success message title"
  },
  "confirm": "Confirm",
  "@confirm": {
    "description": "Confirm button text"
  },
  "yes": "Yes",
  "@yes": {
    "description": "Yes option"
  },
  "no": "No",
  "@no": {
    "description": "No option"
  },
  "back": "Back",
  "@back": {
    "description": "Back button text"
  },
  "next": "Next",
  "@next": {
    "description": "Next button text"
  },
  "skip": "Skip",
  "@skip": {
    "description": "Skip button text"
  },
  "done": "Done",
  "@done": {
    "description": "Done button text"
  },
  "viewAll": "View All",
  "@viewAll": {
    "description": "View all items link"
  },
  "noDataFound": "No data found",
  "@noDataFound": {
    "description": "Empty state message"
  },
  "chatbot": "AI Assistant",
  "@chatbot": {
    "description": "Chatbot screen title"
  },
  "typeMessage": "Type your message...",
  "@typeMessage": {
    "description": "Chat input placeholder"
  },
  "thinking": "Thinking...",
  "@thinking": {
    "description": "AI thinking indicator"
  }
}
''';
  }

  // Generate translations for other languages
  static String generateArbFile(String languageCode) {
    final translations = _getTranslations(languageCode);

    return '''
{
  "@@locale": "$languageCode",
  "appTitle": "${translations['appTitle']}",
  "welcome": "${translations['welcome']}",
  "hello": "${translations['hello']}",
  "login": "${translations['login']}",
  "signup": "${translations['signup']}",
  "email": "${translations['email']}",
  "password": "${translations['password']}",
  "username": "${translations['username']}",
  "phone": "${translations['phone']}",
  "forgotPassword": "${translations['forgotPassword']}",
  "home": "${translations['home']}",
  "profile": "${translations['profile']}",
  "settings": "${translations['settings']}",
  "logout": "${translations['logout']}",
  "save": "${translations['save']}",
  "cancel": "${translations['cancel']}",
  "delete": "${translations['delete']}",
  "edit": "${translations['edit']}",
  "search": "${translations['search']}",
  "loading": "${translations['loading']}",
  "error": "${translations['error']}",
  "success": "${translations['success']}",
  "confirm": "${translations['confirm']}",
  "yes": "${translations['yes']}",
  "no": "${translations['no']}",
  "back": "${translations['back']}",
  "next": "${translations['next']}",
  "skip": "${translations['skip']}",
  "done": "${translations['done']}",
  "viewAll": "${translations['viewAll']}",
  "noDataFound": "${translations['noDataFound']}",
  "chatbot": "${translations['chatbot']}",
  "typeMessage": "${translations['typeMessage']}",
  "thinking": "${translations['thinking']}"
}
''';
  }

  // Get translations for each language
  static Map<String, String> _getTranslations(String languageCode) {
    const en = {
      'appTitle': 'My App',
      'welcome': 'Welcome',
      'hello': 'Hello',
      'login': 'Login',
      'signup': 'Sign Up',
      'email': 'Email',
      'password': 'Password',
      'username': 'Username',
      'phone': 'Phone Number',
      'forgotPassword': 'Forgot Password?',
      'home': 'Home',
      'profile': 'Profile',
      'settings': 'Settings',
      'logout': 'Logout',
      'save': 'Save',
      'cancel': 'Cancel',
      'delete': 'Delete',
      'edit': 'Edit',
      'search': 'Search',
      'loading': 'Loading...',
      'error': 'Error',
      'success': 'Success',
      'confirm': 'Confirm',
      'yes': 'Yes',
      'no': 'No',
      'back': 'Back',
      'next': 'Next',
      'skip': 'Skip',
      'done': 'Done',
      'viewAll': 'View All',
      'noDataFound': 'No data found',
      'chatbot': 'AI Assistant',
      'typeMessage': 'Type your message...',
      'thinking': 'Thinking...',
    };
    final translations = <String, Map<String, String>>{
      'es': {
        'appTitle': 'Mi Aplicación',
        'welcome': 'Bienvenido',
        'hello': 'Hola',
        'login': 'Iniciar Sesión',
        'signup': 'Registrarse',
        'email': 'Correo Electrónico',
        'password': 'Contraseña',
        'username': 'Nombre de Usuario',
        'phone': 'Número de Teléfono',
        'forgotPassword': '¿Olvidaste tu Contraseña?',
        'home': 'Inicio',
        'profile': 'Perfil',
        'settings': 'Configuración',
        'logout': 'Cerrar Sesión',
        'save': 'Guardar',
        'cancel': 'Cancelar',
        'delete': 'Eliminar',
        'edit': 'Editar',
        'search': 'Buscar',
        'loading': 'Cargando...',
        'error': 'Error',
        'success': 'Éxito',
        'confirm': 'Confirmar',
        'yes': 'Sí',
        'no': 'No',
        'back': 'Atrás',
        'next': 'Siguiente',
        'skip': 'Saltar',
        'done': 'Hecho',
        'viewAll': 'Ver Todo',
        'noDataFound': 'No se encontraron datos',
        'chatbot': 'Asistente IA',
        'typeMessage': 'Escribe tu mensaje...',
        'thinking': 'Pensando...',
      },
      'fr': {
        'appTitle': 'Mon Application',
        'welcome': 'Bienvenue',
        'hello': 'Bonjour',
        'login': 'Se Connecter',
        'signup': 'S\'inscrire',
        'email': 'Email',
        'password': 'Mot de Passe',
        'username': 'Nom d\'Utilisateur',
        'phone': 'Numéro de Téléphone',
        'forgotPassword': 'Mot de Passe Oublié?',
        'home': 'Accueil',
        'profile': 'Profil',
        'settings': 'Paramètres',
        'logout': 'Se Déconnecter',
        'save': 'Enregistrer',
        'cancel': 'Annuler',
        'delete': 'Supprimer',
        'edit': 'Modifier',
        'search': 'Rechercher',
        'loading': 'Chargement...',
        'error': 'Erreur',
        'success': 'Succès',
        'confirm': 'Confirmer',
        'yes': 'Oui',
        'no': 'Non',
        'back': 'Retour',
        'next': 'Suivant',
        'skip': 'Passer',
        'done': 'Terminé',
        'viewAll': 'Voir Tout',
        'noDataFound': 'Aucune donnée trouvée',
        'chatbot': 'Assistant IA',
        'typeMessage': 'Tapez votre message...',
        'thinking': 'Réflexion...',
      },
      'de': {
        'appTitle': 'Meine App',
        'welcome': 'Willkommen',
        'hello': 'Hallo',
        'login': 'Anmelden',
        'signup': 'Registrieren',
        'email': 'E-Mail',
        'password': 'Passwort',
        'username': 'Benutzername',
        'phone': 'Telefonnummer',
        'forgotPassword': 'Passwort Vergessen?',
        'home': 'Startseite',
        'profile': 'Profil',
        'settings': 'Einstellungen',
        'logout': 'Abmelden',
        'save': 'Speichern',
        'cancel': 'Abbrechen',
        'delete': 'Löschen',
        'edit': 'Bearbeiten',
        'search': 'Suchen',
        'loading': 'Laden...',
        'error': 'Fehler',
        'success': 'Erfolg',
        'confirm': 'Bestätigen',
        'yes': 'Ja',
        'no': 'Nein',
        'back': 'Zurück',
        'next': 'Weiter',
        'skip': 'Überspringen',
        'done': 'Fertig',
        'viewAll': 'Alle Anzeigen',
        'noDataFound': 'Keine Daten Gefunden',
        'chatbot': 'KI-Assistent',
        'typeMessage': 'Geben Sie Ihre Nachricht ein...',
        'thinking': 'Denken...',
      },
      'it': {
        'appTitle': 'La Mia App',
        'welcome': 'Benvenuto',
        'hello': 'Ciao',
        'login': 'Accedi',
        'signup': 'Registrati',
        'email': 'Email',
        'password': 'Password',
        'username': 'Nome Utente',
        'phone': 'Numero di Telefono',
        'forgotPassword': 'Password Dimenticata?',
        'home': 'Home',
        'profile': 'Profilo',
        'settings': 'Impostazioni',
        'logout': 'Esci',
        'save': 'Salva',
        'cancel': 'Annulla',
        'delete': 'Elimina',
        'edit': 'Modifica',
        'search': 'Cerca',
        'loading': 'Caricamento...',
        'error': 'Errore',
        'success': 'Successo',
        'confirm': 'Conferma',
        'yes': 'Sì',
        'no': 'No',
        'back': 'Indietro',
        'next': 'Avanti',
        'skip': 'Salta',
        'done': 'Fatto',
        'viewAll': 'Vedi Tutto',
        'noDataFound': 'Nessun Dato Trovato',
        'chatbot': 'Assistente IA',
        'typeMessage': 'Scrivi il tuo messaggio...',
        'thinking': 'Pensando...',
      },
      'pt': {
        'appTitle': 'Meu Aplicativo',
        'welcome': 'Bem-vindo',
        'hello': 'Olá',
        'login': 'Entrar',
        'signup': 'Cadastrar',
        'email': 'Email',
        'password': 'Senha',
        'username': 'Nome de Usuário',
        'phone': 'Número de Telefone',
        'forgotPassword': 'Esqueceu a Senha?',
        'home': 'Início',
        'profile': 'Perfil',
        'settings': 'Configurações',
        'logout': 'Sair',
        'save': 'Salvar',
        'cancel': 'Cancelar',
        'delete': 'Excluir',
        'edit': 'Editar',
        'search': 'Pesquisar',
        'loading': 'Carregando...',
        'error': 'Erro',
        'success': 'Sucesso',
        'confirm': 'Confirmar',
        'yes': 'Sim',
        'no': 'Não',
        'back': 'Voltar',
        'next': 'Próximo',
        'skip': 'Pular',
        'done': 'Concluído',
        'viewAll': 'Ver Tudo',
        'noDataFound': 'Nenhum Dado Encontrado',
        'chatbot': 'Assistente IA',
        'typeMessage': 'Digite sua mensagem...',
        'thinking': 'Pensando...',
      },
      'ru': {
        'appTitle': 'Мое Приложение',
        'welcome': 'Добро пожаловать',
        'hello': 'Привет',
        'login': 'Войти',
        'signup': 'Регистрация',
        'email': 'Электронная Почта',
        'password': 'Пароль',
        'username': 'Имя Пользователя',
        'phone': 'Номер Телефона',
        'forgotPassword': 'Забыли Пароль?',
        'home': 'Главная',
        'profile': 'Профиль',
        'settings': 'Настройки',
        'logout': 'Выйти',
        'save': 'Сохранить',
        'cancel': 'Отмена',
        'delete': 'Удалить',
        'edit': 'Редактировать',
        'search': 'Поиск',
        'loading': 'Загрузка...',
        'error': 'Ошибка',
        'success': 'Успех',
        'confirm': 'Подтвердить',
        'yes': 'Да',
        'no': 'Нет',
        'back': 'Назад',
        'next': 'Далее',
        'skip': 'Пропустить',
        'done': 'Готово',
        'viewAll': 'Показать Все',
        'noDataFound': 'Данные Не Найдены',
        'chatbot': 'ИИ Помощник',
        'typeMessage': 'Введите ваше сообщение...',
        'thinking': 'Думаю...',
      },
      'hi': {
        'appTitle': 'मेरा ऐप',
        'welcome': 'स्वागत है',
        'hello': 'नमस्ते',
        'login': 'लॉगिन करें',
        'signup': 'साइन अप करें',
        'email': 'ईमेल',
        'password': 'पासवर्ड',
        'username': 'उपयोगकर्ता नाम',
        'phone': 'फ़ोन नंबर',
        'forgotPassword': 'पासवर्ड भूल गए?',
        'home': 'होम',
        'profile': 'प्रोफाइल',
        'settings': 'सेटिंग्स',
        'logout': 'लॉगआउट',
        'save': 'सेव करें',
        'cancel': 'रद्द करें',
        'delete': 'हटाएं',
        'edit': 'एडिट करें',
        'search': 'खोजें',
        'loading': 'लोड हो रहा है...',
        'error': 'त्रुटि',
        'success': 'सफलता',
        'confirm': 'पुष्टि करें',
        'yes': 'हाँ',
        'no': 'नहीं',
        'back': 'वापस',
        'next': 'अगला',
        'skip': 'स्किप करें',
        'done': 'पूर्ण',
        'viewAll': 'सभी देखें',
        'noDataFound': 'कोई डेटा नहीं मिला',
        'chatbot': 'एआई सहायक',
        'typeMessage': 'अपना संदेश टाइप करें...',
        'thinking': 'सोच रहा है...',
      },
      'bn': {
        'appTitle': 'আমার অ্যাপ',
        'welcome': 'স্বাগতম',
        'hello': 'হ্যালো',
        'login': 'লগইন',
        'signup': 'সাইন আপ',
        'email': 'ইমেইল',
        'password': 'পাসওয়ার্ড',
        'username': 'ব্যবহারকারীর নাম',
        'phone': 'ফোন নম্বর',
        'forgotPassword': 'পাসওয়ার্ড ভুলে গেছেন?',
        'home': 'হোম',
        'profile': 'প্রোফাইল',
        'settings': 'সেটিংস',
        'logout': 'লগআউট',
        'save': 'সংরক্ষণ',
        'cancel': 'বাতিল',
        'delete': 'মুছুন',
        'edit': 'সম্পাদনা',
        'search': 'অনুসন্ধান',
        'loading': 'লোড হচ্ছে...',
        'error': 'ত্রুটি',
        'success': 'সফল',
        'confirm': 'নিশ্চিত করুন',
        'yes': 'হ্যাঁ',
        'no': 'না',
        'back': 'পিছনে',
        'next': 'পরবর্তী',
        'skip': 'এড়িয়ে যান',
        'done': 'সম্পন্ন',
        'viewAll': 'সব দেখুন',
        'noDataFound': 'কোনো ডেটা পাওয়া যায়নি',
        'chatbot': 'এআই সহায়ক',
        'typeMessage': 'আপনার বার্তা টাইপ করুন...',
        'thinking': 'চিন্তা করছে...',
      },
      'te': {
        'appTitle': 'నా యాప్',
        'welcome': 'స్వాగతం',
        'hello': 'హలో',
        'login': 'లాగిన్',
        'signup': 'సైన్ అప్',
        'email': 'ఇమెయిల్',
        'password': 'పాస్‌వర్డ్',
        'username': 'వినియోగదారు పేరు',
        'phone': 'ఫోన్ నంబర్',
        'forgotPassword': 'పాస్‌వర్డ్ మర్చిపోయారా?',
        'home': 'హోమ్',
        'profile': 'ప్రొఫైల్',
        'settings': 'సెట్టింగ్‌లు',
        'logout': 'లాగ్అవుట్',
        'save': 'సేవ్',
        'cancel': 'రద్దు',
        'delete': 'తొలగించు',
        'edit': 'సవరించు',
        'search': 'శోధించు',
        'loading': 'లోడ్ అవుతోంది...',
        'error': 'లోపం',
        'success': 'విజయం',
        'confirm': 'నిర్ధారించు',
        'yes': 'అవును',
        'no': 'కాదు',
        'back': 'వెనుకకు',
        'next': 'తదుపరి',
        'skip': 'దాటవేయి',
        'done': 'పూర్తయింది',
        'viewAll': 'అన్నీ చూడండి',
        'noDataFound': 'డేటా కనుగొనబడలేదు',
        'chatbot': 'AI సహాయకుడు',
        'typeMessage': 'మీ సందేశం టైప్ చేయండి...',
        'thinking': 'ఆలోచిస్తోంది...',
      },
      'mr': {
        'appTitle': 'माझे अॅप',
        'welcome': 'स्वागत आहे',
        'hello': 'नमस्कार',
        'login': 'लॉगिन',
        'signup': 'साइन अप',
        'email': 'ईमेल',
        'password': 'पासवर्ड',
        'username': 'वापरकर्तानाव',
        'phone': 'फोन नंबर',
        'forgotPassword': 'पासवर्ड विसरलात?',
        'home': 'होम',
        'profile': 'प्रोफाइल',
        'settings': 'सेटिंग्ज',
        'logout': 'लॉगआउट',
        'save': 'सेव्ह करा',
        'cancel': 'रद्द करा',
        'delete': 'हटवा',
        'edit': 'संपादित करा',
        'search': 'शोधा',
        'loading': 'लोड होत आहे...',
        'error': 'त्रुटी',
        'success': 'यश',
        'confirm': 'पुष्टी करा',
        'yes': 'होय',
        'no': 'नाही',
        'back': 'मागे',
        'next': 'पुढे',
        'skip': 'वगळा',
        'done': 'पूर्ण',
        'viewAll': 'सर्व पहा',
        'noDataFound': 'डेटा सापडला नाही',
        'chatbot': 'AI सहाय्यक',
        'typeMessage': 'तुमचा संदेश टाइप करा...',
        'thinking': 'विचार करत आहे...',
      },
      'ta': {
        'appTitle': 'எனது பயன்பாடு',
        'welcome': 'வரவேற்கிறோம்',
        'hello': 'வணக்கம்',
        'login': 'உள்நுழைய',
        'signup': 'பதிவு செய்ய',
        'email': 'மின்னஞ்சல்',
        'password': 'கடவுச்சொல்',
        'username': 'பயனர் பெயர்',
        'phone': 'தொலைபேசி எண்',
        'forgotPassword': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா?',
        'home': 'முகப்பு',
        'profile': 'சுயவிவரம்',
        'settings': 'அமைப்புகள்',
        'logout': 'வெளியேறு',
        'save': 'சேமி',
        'cancel': 'ரத்து செய்',
        'delete': 'நீக்கு',
        'edit': 'திருத்து',
        'search': 'தேடு',
        'loading': 'ஏற்றுகிறது...',
        'error': 'பிழை',
        'success': 'வெற்றி',
        'confirm': 'உறுதிப்படுத்து',
        'yes': 'ஆம்',
        'no': 'இல்லை',
        'back': 'பின்செல்',
        'next': 'அடுத்து',
        'skip': 'தவிர்',
        'done': 'முடிந்தது',
        'viewAll': 'அனைத்தையும் காண்க',
        'noDataFound': 'தரவு கிடைக்கவில்லை',
        'chatbot': 'AI உதவியாளர்',
        'typeMessage': 'உங்கள் செய்தியை தட்டச்சு செய்க...',
        'thinking': 'சிந்திக்கிறது...',
      },
      'gu': {
        'appTitle': 'મારી એપ્લિકેશન',
        'welcome': 'સ્વાગત છે',
        'hello': 'નમસ્તે',
        'login': 'લૉગિન',
        'signup': 'સાઇન અપ',
        'email': 'ઈમેલ',
        'password': 'પાસવર્ડ',
        'username': 'વપરાશકર્તા નામ',
        'phone': 'ફોન નંબર',
        'forgotPassword': 'પાસવર્ડ ભૂલી ગયા?',
        'home': 'હોમ',
        'profile': 'પ્રોફાઇલ',
        'settings': 'સેટિંગ્સ',
        'logout': 'લૉગઆઉટ',
        'save': 'સાચવો',
        'cancel': 'રદ કરો',
        'delete': 'કાઢી નાખો',
        'edit': 'સંપાદિત કરો',
        'search': 'શોધો',
        'loading': 'લોડ થઈ રહ્યું છે...',
        'error': 'ભૂલ',
        'success': 'સફળતા',
        'confirm': 'પુષ્ટિ કરો',
        'yes': 'હા',
        'no': 'ના',
        'back': 'પાછળ',
        'next': 'આગળ',
        'skip': 'છોડો',
        'done': 'પૂર્ણ',
        'viewAll': 'બધું જુઓ',
        'noDataFound': 'કોઈ ડેટા મળ્યો નથી',
        'chatbot': 'AI સહાયક',
        'typeMessage': 'તમારો સંદેશ ટાઇપ કરો...',
        'thinking': 'વિચારી રહ્યું છે...',
      },
      'kn': {
        'appTitle': 'ನನ್ನ ಅಪ್ಲಿಕೇಶನ್',
        'welcome': 'ಸ್ವಾಗತ',
        'hello': 'ನಮಸ್ಕಾರ',
        'login': 'ಲಾಗಿನ್',
        'signup': 'ಸೈನ್ ಅಪ್',
        'email': 'ಇಮೇಲ್',
        'password': 'ಪಾಸ್‌ವರ್ಡ್',
        'username': 'ಬಳಕೆದಾರ ಹೆಸರು',
        'phone': 'ಫೋನ್ ಸಂಖ್ಯೆ',
        'forgotPassword': 'ಪಾಸ್‌ವರ್ಡ್ ಮರೆತಿರುವಿರಾ?',
        'home': 'ಮುಖಪುಟ',
        'profile': 'ಪ್ರೊಫೈಲ್',
        'settings': 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು',
        'logout': 'ಲಾಗ್‌ಔಟ್',
        'save': 'ಉಳಿಸಿ',
        'cancel': 'ರದ್ದುಗೊಳಿಸಿ',
        'delete': 'ಅಳಿಸಿ',
        'edit': 'ಸಂಪಾದಿಸಿ',
        'search': 'ಹುಡುಕಿ',
        'loading': 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...',
        'error': 'ದೋಷ',
        'success': 'ಯಶಸ್ಸು',
        'confirm': 'ದೃಢೀಕರಿಸಿ',
        'yes': 'ಹೌದು',
        'no': 'ಇಲ್ಲ',
        'back': 'ಹಿಂದೆ',
        'next': 'ಮುಂದೆ',
        'skip': 'ಬಿಟ್ಟುಬಿಡಿ',
        'done': 'ಮುಗಿದಿದೆ',
        'viewAll': 'ಎಲ್ಲವನ್ನೂ ವೀಕ್ಷಿಸಿ',
        'noDataFound': 'ಯಾವುದೇ ಡೇಟಾ ಸಿಗಲಿಲ್ಲ',
        'chatbot': 'AI ಸಹಾಯಕ',
        'typeMessage': 'ನಿಮ್ಮ ಸಂದೇಶ ಟೈಪ್ ಮಾಡಿ...',
        'thinking': 'ಆಲೋಚಿಸುತ್ತಿದೆ...',
      },
      'ml': {
        'appTitle': 'എന്റെ ആപ്പ്',
        'welcome': 'സ്വാഗതം',
        'hello': 'ഹലോ',
        'login': 'ലോഗിൻ',
        'signup': 'സൈൻ അപ്പ്',
        'email': 'ഇമെയിൽ',
        'password': 'പാസ്‌വേഡ്',
        'username': 'ഉപയോക്തൃനാമം',
        'phone': 'ഫോൺ നമ്പർ',
        'forgotPassword': 'പാസ്‌വേഡ് മറന്നുപോയോ?',
        'home': 'ഹോം',
        'profile': 'പ്രൊഫൈൽ',
        'settings': 'ക്രമീകരണങ്ങൾ',
        'logout': 'ലോഗ്ഔട്ട്',
        'save': 'സേവ് ചെയ്യുക',
        'cancel': 'റദ്ദാക്കുക',
        'delete': 'ഇല്ലാതാക്കുക',
        'edit': 'എഡിറ്റ് ചെയ്യുക',
        'search': 'തിരയുക',
        'loading': 'ലോഡ് ചെയ്യുന്നു...',
        'error': 'പിശക്',
        'success': 'വിജയം',
        'confirm': 'സ്ഥിരീകരിക്കുക',
        'yes': 'അതെ',
        'no': 'ഇല്ല',
        'back': 'പുറകോട്ട്',
        'next': 'അടുത്തത്',
        'skip': 'ഒഴിവാക്കുക',
        'done': 'പൂർത്തിയായി',
        'viewAll': 'എല്ലാം കാണുക',
        'noDataFound': 'ഡാറ്റ കണ്ടെത്തിയില്ല',
        'chatbot': 'AI സഹായി',
        'typeMessage': 'നിങ്ങളുടെ സന്ദേശം ടൈപ്പ് ചെയ്യുക...',
        'thinking': 'ചിന്തിക്കുന്നു...',
      },
      'pa': {
        'appTitle': 'ਮੇਰੀ ਐਪ',
        'welcome': 'ਸਵਾਗਤ ਹੈ',
        'hello': 'ਸਤ ਸ੍ਰੀ ਅਕਾਲ',
        'login': 'ਲੌਗਇਨ',
        'signup': 'ਸਾਈਨ ਅੱਪ',
        'email': 'ਈਮੇਲ',
        'password': 'ਪਾਸਵਰਡ',
        'username': 'ਯੂਜ਼ਰਨੇਮ',
        'phone': 'ਫ਼ੋਨ ਨੰਬਰ',
        'forgotPassword': 'ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ?',
        'home': 'ਹੋਮ',
        'profile': 'ਪ੍ਰੋਫਾਈਲ',
        'settings': 'ਸੈਟਿੰਗਾਂ',
        'logout': 'ਲੌਗਆਊਟ',
        'save': 'ਸੇਵ ਕਰੋ',
        'cancel': 'ਰੱਦ ਕਰੋ',
        'delete': 'ਮਿਟਾਓ',
        'edit': 'ਸੰਪਾਦਿਤ ਕਰੋ',
        'search': 'ਖੋਜੋ',
        'loading': 'ਲੋਡ ਹੋ ਰਿਹਾ ਹੈ...',
        'error': 'ਗਲਤੀ',
        'success': 'ਸਫਲਤਾ',
        'confirm': 'ਪੁਸ਼ਟੀ ਕਰੋ',
        'yes': 'ਹਾਂ',
        'no': 'ਨਹੀਂ',
        'back': 'ਪਿੱਛੇ',
        'next': 'ਅੱਗੇ',
        'skip': 'ਛੱਡੋ',
        'done': 'ਹੋ ਗਿਆ',
        'viewAll': 'ਸਭ ਦੇਖੋ',
        'noDataFound': 'ਕੋਈ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ',
        'chatbot': 'AI ਸਹਾਇਕ',
        'typeMessage': 'ਆਪਣਾ ਸੁਨੇਹਾ ਟਾਈਪ ਕਰੋ...',
        'thinking': 'ਸੋਚ ਰਿਹਾ ਹੈ...',
      },
      'or': {
        'appTitle': 'ମୋର ଆପ୍',
        'welcome': 'ସ୍ୱାଗତ',
        'hello': 'ନମସ୍କାର',
        'login': 'ଲଗଇନ୍',
        'signup': 'ସାଇନ୍ ଅପ୍',
        'email': 'ଇମେଲ୍',
        'password': 'ପାସୱାର୍ଡ଼',
        'username': 'ୟୁଜରନେମ୍',
        'phone': 'ଫୋନ୍ ନମ୍ବର',
        'forgotPassword': 'ପାସୱାର୍ଡ଼ ଭୁଲିଗଲେ?',
        'home': 'ହୋମ୍',
        'profile': 'ପ୍ରୋଫାଇଲ୍',
        'settings': 'ସେଟିଂସ୍',
        'logout': 'ଲଗଆଉଟ୍',
        'save': 'ସେଭ୍ କରନ୍ତୁ',
        'cancel': 'ବାତିଲ୍ କରନ୍ତୁ',
        'delete': 'ଡିଲିଟ୍ କରନ୍ତୁ',
        'edit': 'ଏଡିଟ୍ କରନ୍ତୁ',
        'search': 'ସର୍ଚ୍ଚ କରନ୍ତୁ',
        'loading': 'ଲୋଡ୍ ହେଉଛି...',
        'error': 'ତ୍ରୁଟି',
        'success': 'ସଫଳତା',
        'confirm': 'ନିଶ୍ଚିତ କରନ୍ତୁ',
        'yes': 'ହଁ',
        'no': 'ନା',
        'back': 'ପଛକୁ',
        'next': 'ପରବର୍ତ୍ତୀ',
        'skip': 'ଛାଡ଼ନ୍ତୁ',
        'done': 'ସମ୍ପୂର୍ଣ୍ଣ',
        'viewAll': 'ସମସ୍ତ ଦେଖନ୍ତୁ',
        'noDataFound': 'କୌଣସି ଡାଟା ମିଳିଲା ନାହିଁ',
        'chatbot': 'AI ସହାୟକ',
        'typeMessage': 'ଆପଣଙ୍କର ମେସେଜ୍ ଟାଇପ୍ କରନ୍ତୁ...',
        'thinking': 'ଚିନ୍ତା କରୁଛି...',
      },
      'zh': {
        'appTitle': '我的应用',
        'welcome': '欢迎',
        'hello': '你好',
        'login': '登录',
        'signup': '注册',
        'email': '电子邮件',
        'password': '密码',
        'username': '用户名',
        'phone': '电话号码',
        'forgotPassword': '忘记密码？',
        'home': '主页',
        'profile': '个人资料',
        'settings': '设置',
        'logout': '登出',
        'save': '保存',
        'cancel': '取消',
        'delete': '删除',
        'edit': '编辑',
        'search': '搜索',
        'loading': '加载中...',
        'error': '错误',
        'success': '成功',
        'confirm': '确认',
        'yes': '是',
        'no': '否',
        'back': '返回',
        'next': '下一个',
        'skip': '跳过',
        'done': '完成',
        'viewAll': '查看全部',
        'noDataFound': '未找到数据',
        'chatbot': 'AI助手',
        'typeMessage': '输入您的消息...',
        'thinking': '思考中...',
      },
      'ja': {
        'appTitle': 'マイアプリ',
        'welcome': 'ようこそ',
        'hello': 'こんにちは',
        'login': 'ログイン',
        'signup': 'サインアップ',
        'email': 'メール',
        'password': 'パスワード',
        'username': 'ユーザー名',
        'phone': '電話番号',
        'forgotPassword': 'パスワードをお忘れですか？',
        'home': 'ホーム',
        'profile': 'プロフィール',
        'settings': '設定',
        'logout': 'ログアウト',
        'save': '保存',
        'cancel': 'キャンセル',
        'delete': '削除',
        'edit': '編集',
        'search': '検索',
        'loading': '読み込み中...',
        'error': 'エラー',
        'success': '成功',
        'confirm': '確認',
        'yes': 'はい',
        'no': 'いいえ',
        'back': '戻る',
        'next': '次へ',
        'skip': 'スキップ',
        'done': '完了',
        'viewAll': 'すべて表示',
        'noDataFound': 'データが見つかりません',
        'chatbot': 'AIアシスタント',
        'typeMessage': 'メッセージを入力...',
        'thinking': '考え中...',
      },
      'ar': {
        'appTitle': 'تطبيقي',
        'welcome': 'مرحباً',
        'hello': 'مرحبا',
        'login': 'تسجيل الدخول',
        'signup': 'التسجيل',
        'email': 'البريد الإلكتروني',
        'password': 'كلمة المرور',
        'username': 'اسم المستخدم',
        'phone': 'رقم الهاتف',
        'forgotPassword': 'هل نسيت كلمة المرور؟',
        'home': 'الرئيسية',
        'profile': 'الملف الشخصي',
        'settings': 'الإعدادات',
        'logout': 'تسجيل الخروج',
        'save': 'حفظ',
        'cancel': 'إلغاء',
        'delete': 'حذف',
        'edit': 'تعديل',
        'search': 'بحث',
        'loading': 'جاري التحميل...',
        'error': 'خطأ',
        'success': 'نجاح',
        'confirm': 'تأكيد',
        'yes': 'نعم',
        'no': 'لا',
        'back': 'رجوع',
        'next': 'التالي',
        'skip': 'تخطي',
        'done': 'تم',
        'viewAll': 'عرض الكل',
        'noDataFound': 'لم يتم العثور على بيانات',
        'chatbot': 'مساعد الذكاء الاصطناعي',
        'typeMessage': 'اكتب رسالتك...',
        'thinking': 'يفكر...',
      },
    };

    return translations[languageCode] ?? en;
  }

  // Generate locale provider helper
  static String generateLocaleProvider(String projectName) {
    return '''
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  LocaleProvider() {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode') ?? 'en';
    _locale = Locale(languageCode);
    notifyListeners();
  }

  Future<void> setLocale(Locale locale) async {
    if (_locale == locale) return;

    _locale = locale;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', locale.languageCode);
  }

  void clearLocale() {
    _locale = const Locale('en');
    notifyListeners();
  }
}
''';
  }

  // Generate language selection widget
  static String generateLanguageSelector(String projectName) {
    return '''
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:$projectName/core/providers/locale_provider.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  static const Map<String, String> languages = {
    'en': '🇬🇧 English',
    'es': '🇪🇸 Español',
    'fr': '🇫🇷 Français',
    'de': '🇩🇪 Deutsch',
    'it': '🇮🇹 Italiano',
    'pt': '🇵🇹 Português',
    'ru': '🇷🇺 Русский',
    'zh': '🇨🇳 中文',
    'ja': '🇯🇵 日本語',
    'ar': '🇸🇦 العربية',
    'hi': '🇮🇳 हिन्दी',
    'bn': '🇮🇳 বাংলা',
    'te': '🇮🇳 తెలుగు',
    'mr': '🇮🇳 मराठी',
    'ta': '🇮🇳 தமிழ்',
    'gu': '🇮🇳 ગુજરાતી',
    'kn': '🇮🇳 ಕನ್ನಡ',
    'ml': '🇮🇳 മലയാളം',
    'pa': '🇮🇳 ਪੰਜਾਬੀ',
    'or': '🇮🇳 ଓଡ଼ିଆ',
  };

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    final currentLocale = localeProvider.locale.languageCode;

    return AlertDialog(
      title: const Text('Select Language'),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: languages.length,
          itemBuilder: (context, index) {
            final entry = languages.entries.elementAt(index);
            final isSelected = currentLocale == entry.key;

            return ListTile(
              leading: Text(
                entry.value.split(' ').first,
                style: const TextStyle(fontSize: 24),
              ),
              title: Text(entry.value.split(' ').skip(1).join(' ')),
              trailing: isSelected
                  ? Icon(Icons.check, color: Theme.of(context).primaryColor)
                  : null,
              selected: isSelected,
              onTap: () {
                localeProvider.setLocale(Locale(entry.key));
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const LanguageSelector(),
    );
  }
}
''';
  }

  // Generate README for localization
  static String generateLocalizationReadme() {
    return '''
# Localization Guide

This app supports multiple languages using Flutter's internationalization (l10n).

## Supported Languages

### International Languages
- 🇬🇧 English (en)
- 🇪🇸 Spanish (es)
- 🇫🇷 French (fr)
- 🇩🇪 German (de)
- 🇮🇹 Italian (it)
- 🇵🇹 Portuguese (pt)
- 🇷🇺 Russian (ru)
- 🇨🇳 Chinese (zh)
- 🇯🇵 Japanese (ja)
- 🇸🇦 Arabic (ar)

### Indian Languages
- 🇮🇳 Hindi (hi)
- 🇮🇳 Bengali (bn)
- 🇮🇳 Telugu (te)
- 🇮🇳 Marathi (mr)
- 🇮🇳 Tamil (ta)
- 🇮🇳 Gujarati (gu)
- 🇮🇳 Kannada (kn)
- 🇮🇳 Malayalam (ml)
- 🇮🇳 Punjabi (pa)
- 🇮🇳 Odia (or)

## Setup Instructions

### 1. Add Dependencies

Add these to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any
  provider: ^6.0.0
  shared_preferences: ^2.0.0

flutter:
  generate: true
```

### 2. Create l10n.yaml

Create `l10n.yaml` in your project root:

```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
synthetic-package: false
output-class: AppLocalizations
```

### 3. Create ARB Files

Create folder `lib/l10n/` and add ARB files:
- `app_en.arb` (template)
- `app_es.arb`, `app_fr.arb`, etc. for other languages

### 4. Generate Localization Files

Run this command:

```bash
flutter gen-l10n
```

This will generate the localization files in `.dart_tool/flutter_gen/gen_l10n/`.

### 5. Setup Main App

Update your `main.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'core/providers/locale_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      title: 'My App',
      locale: localeProvider.locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
        Locale('fr'), // French
        Locale('de'), // German
        Locale('it'), // Italian
        Locale('pt'), // Portuguese
        Locale('ru'), // Russian
        Locale('zh'), // Chinese
        Locale('ja'), // Japanese
        Locale('ar'), // Arabic
        Locale('hi'), // Hindi
        Locale('bn'), // Bengali
        Locale('te'), // Telugu
        Locale('mr'), // Marathi
        Locale('ta'), // Tamil
        Locale('gu'), // Gujarati
        Locale('kn'), // Kannada
        Locale('ml'), // Malayalam
        Locale('pa'), // Punjabi
        Locale('or'), // Odia
      ],
      home: const HomeScreen(),
    );
  }
}
```

## Usage

### In Code

```dart
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Use in widgets
Text(AppLocalizations.of(context)!.welcome)
Text(AppLocalizations.of(context)!.login)
Text(AppLocalizations.of(context)!.chatbot)

// Or with a shorter syntax
final l10n = AppLocalizations.of(context)!;
Text(l10n.hello)
Text(l10n.settings)
```

### Change Language

Use the `LanguageSelector` widget:

```dart
import 'package:your_app/widgets/language_selector.dart';

// In your settings screen or anywhere
ElevatedButton(
  onPressed: () => LanguageSelector.show(context),
  child: Text('Change Language'),
)

// Or use the widget directly
IconButton(
  icon: const Icon(Icons.language),
  onPressed: () => LanguageSelector.show(context),
)
```

### Access Current Locale

```dart
import 'package:provider/provider.dart';
import 'package:your_app/core/providers/locale_provider.dart';

// Get current locale
final currentLocale = Provider.of<LocaleProvider>(context).locale;

// Change locale programmatically
Provider.of<LocaleProvider>(context, listen: false)
    .setLocale(Locale('es'));
```

## File Structure

```
lib/
├── l10n/
│   ├── app_en.arb
│   ├── app_es.arb
│   ├── app_fr.arb
│   ├── app_de.arb
│   ├── app_hi.arb
│   └── ... (other language files)
├── core/
│   └── providers/
│       └── locale_provider.dart
├── widgets/
│   └── language_selector.dart
└── main.dart

l10n.yaml (in project root)
```

## Adding New Translations

1. Open the English template file `lib/l10n/app_en.arb`
2. Add new keys with descriptions:

```json
{
  "newKey": "New Text",
  "@newKey": {
    "description": "Description of this text"
  }
}
```

3. Add translations to other language files
4. Run `flutter gen-l10n` to regenerate
5. Use in code: `AppLocalizations.of(context)!.newKey`

## Pluralization Example

For texts that need pluralization:

```json
{
  "itemCount": "{count, plural, =0{No items} =1{1 item} other{{count} items}}",
  "@itemCount": {
    "description": "Number of items",
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  }
}
```

Usage:
```dart
Text(AppLocalizations.of(context)!.itemCount(5))
```

## Parameters Example

For texts with parameters:

```json
{
  "greeting": "Hello {name}!",
  "@greeting": {
    "description": "Greeting with name",
    "placeholders": {
      "name": {
        "type": "String"
      }
    }
  }
}
```

Usage:
```dart
Text(AppLocalizations.of(context)!.greeting('John'))
```

## Testing

Test different languages:

```dart
// In your tests
testWidgets('Test localization', (tester) async {
  await tester.pumpWidget(
    MaterialApp(
      locale: const Locale('es'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: YourWidget(),
    ),
  );
  
  // Verify Spanish text appears
  expect(find.text('Hola'), findsOneWidget);
});
```

## Best Practices

1. **Always use localization keys** - Never hardcode strings in UI
2. **Keep keys descriptive** - Use clear, meaningful key names
3. **Add descriptions** - Help translators understand context
4. **Test all languages** - Especially RTL languages like Arabic
5. **Handle long text** - Some translations may be longer
6. **Use parameters** - For dynamic content within translations
7. **Regenerate after changes** - Run `flutter gen-l10n` after ARB updates

## RTL Support

For Arabic and other RTL languages, Flutter automatically handles text direction. Ensure your layouts work with both LTR and RTL:

```dart
// Use these for proper RTL support
Directionality.of(context)
TextDirection.ltr
TextDirection.rtl

// Avoid hardcoded left/right, use start/end instead
EdgeInsets.symmetric(horizontal: 16) // Good
EdgeInsets.only(left: 16) // Avoid
```

## Troubleshooting

**Problem**: Generated files not found  
**Solution**: Run `flutter gen-l10n` or `flutter pub get`

**Problem**: Locale not changing  
**Solution**: Check LocaleProvider is properly set up with Provider

**Problem**: Missing translations  
**Solution**: Ensure all ARB files have the same keys

**Problem**: Build errors after adding new language  
**Solution**: Add the locale to `supportedLocales` in MaterialApp

## Resources

- [Flutter Internationalization Guide](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
- [ARB File Format](https://github.com/google/app-resource-bundle/wiki/ApplicationResourceBundleSpecification)
- [Intl Package](https://pub.dev/packages/intl)

## Contributing Translations

To contribute translations:

1. Fork the repository
2. Add/update ARB files in `lib/l10n/`
3. Test the translations
4. Submit a pull request

Ensure translations are:
- Accurate and natural
- Culturally appropriate
- Consistent with app tone
- Tested on actual devices
''';
  }
}
