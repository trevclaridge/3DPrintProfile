// ignore_for_file: constant_identifier_names

part of model;

class Environment {
  static const String MMF_SECRET = String.fromEnvironment('MMF_SECRET',
      defaultValue: 'environment MMF_SECRET not set');
  static const String PATREON_SECRET = String.fromEnvironment('PATREON_SECRET',
      defaultValue: 'environment PATREON_SECRET not set');
  static const String PATREON_CLIENT_ID = String.fromEnvironment(
      'PATREON_CLIENT_ID',
      defaultValue: 'environment PATREON_CLIENT_ID not set');
  static const String PATREON_CREATOR_ACCESS_TOKEN = String.fromEnvironment(
      'PATREON_CREATOR_ACCESS_TOKEN',
      defaultValue: 'environment PATREON_CREATOR_ACCESS_TOKEN not set');
  static const String PATREON_REFRESH_TOKEN = String.fromEnvironment(
      'PATREON_REFRESH_TOKEN',
      defaultValue: 'environment PATREON_REFRESH_TOKEN not set');
}
