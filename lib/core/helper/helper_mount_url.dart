import 'package:teste_flutter_crmall/core/constant/constant.dart';
import 'package:teste_flutter_crmall/core/helper/helper.dart';

class HelperMountURL {
  static String url = Strings.baseURL + Strings.getAllComics;
  static String publicAPI = Strings.apiPublicKey;
  static String privateAPI = Strings.apiPrivateKey;
  static String timeStamp = Strings.timestamp;

  static String mountURL() {
    //http://gateway.marvel.com/v1/public/characters?apikey=8a66fe6fafa5f02f639de71ba4e40118&hash=38d2f38b09277245ed60a0ed5b9bff06&ts=2021-02-06T22:14:49.480084
    String hash = HelperHash.generatedMD5();
    print('############## HASH ############ ====> $hash');

    //http://gateway.marvel.com/v1/public/characters/1009351?apikey=8a66fe6fafa5f02f639de71ba4e40118&hash=b07f7d3eced1866406b41d60198575dd&ts=2021-02-07T13:32:55.291860

    // return '$url?apikey=$publicAPI&hash=$hash&ts=$timeStamp';

    return 'http://gateway.marvel.com/v1/public/comics?apikey=8a66fe6fafa5f02f639de71ba4e40118&hash=38d2f38b09277245ed60a0ed5b9bff06&ts=2021-02-06T22:14:49.480084';
  }
}
