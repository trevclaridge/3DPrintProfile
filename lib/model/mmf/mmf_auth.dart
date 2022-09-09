// ignore_for_file: non_constant_identifier_names

part of model;

class MMFAuth {
  String? authorizationCode;
  String? accessToken;

  static const String _authUrl =
      'https://auth.myminifactory.com/web/authorize?client_id=3DPrintingProfile&redirect_uri=http://localhost:62950&response_type=code&state=kjfgierwgn';

  String fetchAuthCode(String url) {
    var startIndexSchema = 'code=';
    var endIndexSchema = '&';

    final startIndex = url.indexOf(startIndexSchema);
    final endIndex =
        url.indexOf(endIndexSchema, startIndex + startIndexSchema.length);

    var authCode =
        url.substring(startIndex + startIndexSchema.length, endIndex);

    return authCode;
  }

  String get MMFAuthUrl {
    return _authUrl;
  }

  Future<AuthenticationToken> fetchAthenticationToken(
      String authorizationCode) async {
    String username = '3DPrintingProfile';
    String password = Environment.MMF_SECRET;
    String basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';
    print(basicAuth);

    final response = await http.post(
        Uri.parse(
            'https://auth.myminifactory.com/v1/oauth/tokens&grant_type=authorization_code&code=$authorizationCode&redirect_uri=http://localhost:59590'),
        headers: <String, String>{'authorization': basicAuth});

    if (response.statusCode == 200) {
      print(response.body);
      return AuthenticationToken.fromJson(jsonDecode(response.body));
    } else {
      print(response.body);
      throw Exception('Failed to load token');
    }
  }
}
