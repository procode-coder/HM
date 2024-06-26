import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HMColors {
  HMColors._();

  static const HMColor blue = HMColor(
    _bluePrimaryColor,
    <int, Color>{
      0: Color(_bluePrimaryColor),
      1: Color(0xFFf4f6fa),
      2: Color(0xFFdde3f0),
      3: Color(0xFFc6d1e7),
      4: Color(0xFF98acd3),
      5: Color(0xFF6482bd),
      6: Color(0xFF3059a7),
      7: Color(0xFF163d89),
      8: Color(0xFF102e66),
      9: Color(0xFF0b1e43),
      10: Color(0xFF050e1f),
    },
  );

  static const int _bluePrimaryColor = 0xFF19469d;

  static const HMColor danger = HMColor(
    _dangerPrimaryColor,
    <int, Color>{
      0: Color(_dangerPrimaryColor),
      1: Color(0xFFfef7f8),
      2: Color(0xFFf7d3d6),
      3: Color(0xFFf1aeb5),
      4: Color(0xFFeb8a93),
      5: Color(0xFFe46572),
      6: Color(0xFFde4150),
      7: Color(0xFFc22f3d),
      8: Color(0xFF9a2530),
      9: Color(0xFF721c24),
      10: Color(0xFF4b1217),
    },
  );

  static const int _dangerPrimaryColor = 0xFFdc3545;

  static const HMColor gray = HMColor(
    _grayPrimaryColor,
    <int, Color>{
      0: Color(_grayPrimaryColor),
      1: Color(0xFFfafafa),
      2: Color(0xFFf2f2f2),
      3: Color(0xFFe6e6e6),
      4: Color(0xFFdadada),
      5: Color(0xFFcccccc),
      6: Color(0xFF999999),
      7: Color(0xFF808080),
      8: Color(0xFF4d4d4d),
      9: Color(0xFF303030),
      10: Color(0xFF202020),
    },
  );

  static const int _grayPrimaryColor = 0xFFe6e6e6;

  static const HMColor info = HMColor(
    _infoPrimaryColor,
    <int, Color>{
      0: Color(_infoPrimaryColor),
      1: Color(0xFFf3fafb),
      2: Color(0xFFdcf1f4),
      3: Color(0xFFc5e8ed),
      4: Color(0xFF91d3dd),
      5: Color(0xFF62c0cf),
      6: Color(0xFF2eabbf),
      7: Color(0xFF148ea1),
      8: Color(0xFF0f6978),
      9: Color(0xFF0a454e),
      10: Color(0xFF052025),
    },
  );

  static const int _infoPrimaryColor = 0xFF17a2b8;

  static const HMColor lime = HMColor(
    _limePrimaryColor,
    <int, Color>{
      0: Color(_limePrimaryColor),
      1: Color(0xFFfafcf4),
      2: Color(0xFFf0f7de),
      3: Color(0xFFe5f1c8),
      4: Color(0xFFcee496),
      5: Color(0xFFb7d864),
      6: Color(0xFFa2cd38),
      7: Color(0xFF81a91d),
      8: Color(0xFF5f7c15),
      9: Color(0xFF3d500e),
      10: Color(0xFF1b2306),
    },
  );

  static const int _limePrimaryColor = 0xFF98c722;

  static const HMColor orange = HMColor(
    _orangePrimaryColor,
    <int, Color>{
      0: Color(_orangePrimaryColor),
      1: Color(0xFFfff9f4),
      2: Color(0xFFfeecdd),
      3: Color(0xFFfde3cd),
      4: Color(0xFFfbc79a),
      5: Color(0xFFf8ab68),
      6: Color(0xFFf68f35),
      7: Color(0xFFd6721b),
      8: Color(0xFF9f5514),
      9: Color(0xFF68370d),
      10: Color(0xFF311a06),
    },
  );

  static const int _orangePrimaryColor = 0xFFf5821f;

  static const HMColor pink = HMColor(
    _pinkPrimaryColor,
    <int, Color>{
      0: Color(_pinkPrimaryColor),
      1: Color(0xFFfcf6f9),
      2: Color(0xFFf6e3ee),
      3: Color(0xFFf1d4e5),
      4: Color(0xFFe5aecf),
      5: Color(0xFFdf9bc3),
      6: Color(0xFFd67fb2),
      7: Color(0xFFc85498),
      8: Color(0xFFaa397b),
      9: Color(0xFF7e2a5c),
      10: Color(0xFF521c3c),
    },
  );

  static const int _pinkPrimaryColor = 0xFFc2418d;

  static const HMColor purple = HMColor(
    _purplePrimaryColor,
    <int, Color>{
      0: Color(_purplePrimaryColor),
      1: Color(0xFFf8f5fb),
      2: Color(0xFFebe1f4),
      3: Color(0xFFe1d3ef),
      4: Color(0xFFc3a6de),
      5: Color(0xFFa57ace),
      6: Color(0xFF8a53bf),
      7: Color(0xFF8349bb),
      8: Color(0xFF67319b),
      9: Color(0xFF4c2472),
      10: Color(0xFF301749),
    },
  );

  static const int _purplePrimaryColor = 0xFF793ab6;

  static const HMColor sky = HMColor(
    _skyPrimaryColor,
    <int, Color>{
      0: Color(_skyPrimaryColor),
      1: Color(0xFFf2f8fd),
      2: Color(0xFFd9eafa),
      3: Color(0xFFc0ddf6),
      4: Color(0xFF8dc1ef),
      5: Color(0xFF54a2e7),
      6: Color(0xFF1a83df),
      7: Color(0xFF0166c0),
      8: Color(0xFF014c8e),
      9: Color(0xFF00325d),
      10: Color(0xFF00172c),
    },
  );

  static const int _skyPrimaryColor = 0xFF0175DB;

  static const HMColor success = HMColor(
    _successPrimaryColor,
    <int, Color>{
      0: Color(_successPrimaryColor),
      1: Color(0xFFf4fbf6),
      2: Color(0xFFdff2e3),
      3: Color(0xFFc9e9d1),
      4: Color(0xFF99d5a7),
      5: Color(0xFF69c17d),
      6: Color(0xFF3db058),
      7: Color(0xFF228e3b),
      8: Color(0xFF19682b),
      9: Color(0xFF10431c),
      10: Color(0xFF08210e),
    },
  );

  static const int _successPrimaryColor = 0xFF28a745;

  static const HMColor warning = HMColor(
    _warningPrimaryColor,
    <int, Color>{
      0: Color(_warningPrimaryColor),
      1: Color(0xFFfffcf3),
      2: Color(0xFFfff6da),
      3: Color(0xFFfff1c7),
      4: Color(0xFFffe38f),
      5: Color(0xFFffd558),
      6: Color(0xFFffc720),
      7: Color(0xFFdfa906),
      8: Color(0xFFa67d05),
      9: Color(0xFF6c5203),
      10: Color(0xFF332701),
    },
  );

  static const int _warningPrimaryColor = 0xFFffc107;

  static const HMColor yellow = HMColor(
    _yellowPrimaryColor,
    <int, Color>{
      0: Color(_yellowPrimaryColor),
      1: Color(0xFFfffbf4),
      2: Color(0xFFfef2dd),
      3: Color(0xFFfeebcb),
      4: Color(0xFFfcd898),
      5: Color(0xFFfbc464),
      6: Color(0xFFfab131),
      7: Color(0xFFda9317),
      8: Color(0xFFa26d11),
      9: Color(0xFF6a470b),
      10: Color(0xFF322205),
    },
  );
  static const int _yellowPrimaryColor = 0xFFf9a81a;

  static const HMColor white = HMColor(
    _whitePrimaryColor,
    <int, Color>{
      0: Color(_whitePrimaryColor),
      1: Color(_whitePrimaryColor),
      2: Color(_whitePrimaryColor),
      3: Color(_whitePrimaryColor),
      4: Color(_whitePrimaryColor),
      5: Color(_whitePrimaryColor),
      6: Color(_whitePrimaryColor),
      7: Color(_whitePrimaryColor),
      8: Color(_whitePrimaryColor),
      9: Color(_whitePrimaryColor),
      10: Color(_whitePrimaryColor),
    },
  );
  static const int _whitePrimaryColor = 0xFFffffff;

  static const MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(_blackPrimaryValue),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );
  static const int _blackPrimaryValue = 0xFF000000;
}

class HMColor extends ColorSwatch<int> {
  const HMColor(int primary, Map<int, Color> swatch) : super(primary, swatch);

  Color get shade1 => this[1]!;
  Color get shade2 => this[2]!;
  Color get shade3 => this[3]!;
  Color get shade4 => this[4]!;
  Color get shade5 => this[5]!;
  Color get shade6 => this[6]!;
  Color get shade7 => this[7]!;
  Color get shade8 => this[8]!;
  Color get shade9 => this[9]!;
  Color get shade10 => this[10]!;
}
