class ApiUrl {
  static String baseUrl = "https://api.shopstantly.com";
  static String serverUrl = "$baseUrl/v1";

  static String loginUrl = "$serverUrl/auth/login";
  static String registerUrl = "$serverUrl/auth/register";
  static String activateAcctUrl = "$serverUrl/auth/activate-account";
  static String resendActivationCodeUrl = "$serverUrl/auth/resend-verification-code";
  static String completeRegistrationUrl = "$serverUrl/auth/complete-registration";
  static String usernameAvailabilityUrl = "$serverUrl/auth/username-exist";
}
