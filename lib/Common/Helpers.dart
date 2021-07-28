import 'dart:convert';

class Helpers {
  /// Auth Services
  static final String baseUrl = "https://skedaddle.login2design.co.uk/api";
  static final String login = "/auth/login";


  String convertToBase64(String credentials) {
    final Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(credentials);
  }

  String base64ToString(String credentials) {
    final Codec<String, String> base64ToString = utf8.fuse(base64);
    return base64ToString.decode(credentials);
  }
}
