import 'dart:core';

part 'sip_configuration.g.dart';

class SipConfiguration {
  final String _ext;
  final String _domain;
  final String _password;
  int _port = 65080;
  String _transportType = "Udp";
  bool _isKeepAlive = false;

  SipConfiguration(String extension, String domain, String password, int port,
      String transportType, bool isKeepAlive)
      : _ext = extension,
        _domain = domain,
        _password = password,
        _port = port,
        _transportType = transportType,
        _isKeepAlive = isKeepAlive;

  SipConfiguration._builder(SipConfigurationBuilder builder)
      : _ext = builder._ext,
        _domain = builder._domain,
        _password = builder._password,
        _port = builder._port,
        _transportType = builder._transportType,
        _isKeepAlive = builder._isKeepAlive;

  String get extension => _ext;

  String get domain => _domain;

  String get password => _password;

  int get port => _port;

  String get transportType => _transportType;

  bool get isKeepAlive => _isKeepAlive;

  factory SipConfiguration.fromJson(Map<String, dynamic> json) =>
      _$SipConfigurationFromJson(json);

  /// Connect the generated [_$SipConfigurationToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SipConfigurationToJson(this);
}

class SipConfigurationBuilder {
  final String _ext;
  final String _domain;
  final String _password;
  int _port = 5060;
  String _transportType = "Udp";
  bool _isKeepAlive = false;

  SipConfigurationBuilder(
      {required String extension,
      required String domain,
      required String password})
      : _ext = extension,
        _domain = domain,
        _password = password;

  SipConfigurationBuilder setPort(int port) {
    _port = port;
    return this;
  }

  SipConfigurationBuilder setTransport(String transportType) {
    _transportType = transportType;
    return this;
  }

  SipConfigurationBuilder setKeepAlive(bool isKeepAlive) {
    _isKeepAlive = isKeepAlive;
    return this;
  }

  SipConfiguration build() {
    return SipConfiguration._builder(this);
  }
}