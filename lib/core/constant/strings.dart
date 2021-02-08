class Strings {
  static String get baseURL => 'http://gateway.marvel.com';
  static String get timestamp => DateTime.now().toIso8601String();
  static String apiPrivateKey = '78c1fda6d824dae7f656e424f3af88041cbc5e89';
  static String apiPublicKey = 'a7e592d785b8b8c294e9069165a33c6b';

  ///EndPoints method GET
  static String get getAllComics => '/v1/public/comics';

  static const characterList = [
    {
      'hero_name': 'Captain America',
      'real_name': 'Steve Roger',
      'imgUrl': 'assets/image/captain.png',
      'description':
          'America’s World War II Super-Soldier continues his fight in the present as an Avenger and untiring sentinel of liberty.',
    }
  ];
}
