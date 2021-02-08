import 'dart:convert';
import 'package:crypto/crypto.dart';

import '../constant/constant.dart';

class HelperHash {
  static String dateTime = DateTime.now().toIso8601String();
  static String apiKeyPublic = Strings.apiPublicKey;
  static String apiKeyPrivate = Strings.apiPrivateKey;
  static String url = Strings.baseURL;

  static String generatedMD5() {
    return md5
        .convert(utf8.encode(dateTime + apiKeyPrivate + apiKeyPublic))
        .toString();
  }
}
