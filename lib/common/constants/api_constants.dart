class ApiConstants {
  ApiConstants._();

  static const String _authPath = '/auth';
  static const String _articlePath = '/articles';
  static const String _eventsPath = '/events';
  // Auth
  static const String googleAuth = '$_authPath/social_auth/google';
  static const String githubAuth = '$_authPath/social_auth/github';
  static const String emailRegister = '$_authPath/register';
  static const String emailLogin = '$_authPath/login';

  // Articles
  static const String createArticle = '$_articlePath/create';
  static const String updateArticle = '$_articlePath/update';
  static const String getArticleById = '$_articlePath/get';
  static const String getAllArticle = _articlePath;

  // Events
  static const String createEvent = '$_eventsPath/create';
  static const String updateEvent = '$_eventsPath/update';
  static const String getAllEvents = '$_eventsPath/all';
  static const String deleteEvent = '$_eventsPath/delete';
}
