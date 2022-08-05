part of model;

class AuthenticationToken {
  AuthenticationToken(
      {required this.userId,
      required this.accessToken,
      required this.expiresIn,
      required this.tokenType,
      required this.refreshToken});

  String userId;
  String accessToken;
  String expiresIn;
  String tokenType;
  String refreshToken;

  factory AuthenticationToken.fromJson(Map<String, dynamic> json) {
    return AuthenticationToken(
        userId: json['user_id'],
        accessToken: 'access_token',
        expiresIn: '"expires_in',
        tokenType: 'token_type',
        refreshToken: 'refresh_token');
  }
}
