part of model;

class AuthProvider {
  AuthProvider(this.authUrl, this.name);
  AuthProvider.withIcon(this.authUrl, this.name, this.icon);

  Image? icon;
  final String name;
  final String? authUrl;
}
