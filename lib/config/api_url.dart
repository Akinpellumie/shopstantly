class ApiUrl {
  static String baseUrl = "https://shopstantly-api.herokuapp.com";
  static String serverUrl = "$baseUrl/api/v1";

  static String loginUrl = "$serverUrl/auth/login";
  static String registerUrl = "$serverUrl/auth/register";
  static String activateAcctUrl = "$serverUrl/auth/activate-account";
}
