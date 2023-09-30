import 'dart:ui';

class ColorsHelpers {
  static Color getRandom(String name)
  {
    List<Color> colors = [
      const Color.fromARGB(255, 244, 67, 54),
      const Color.fromARGB(255, 255, 64, 129),
      const Color.fromARGB(255, 156, 39, 176),
      const Color.fromARGB(255, 103, 58, 183),
      const Color.fromARGB(255, 63, 81, 181),
      const Color.fromARGB(255, 33, 150, 243),
      const Color.fromARGB(255, 3, 169, 244),
      const Color.fromARGB(255, 0, 188, 212),
      const Color.fromARGB(255, 0, 150, 136),
      const Color.fromARGB(255, 76, 175, 80),
      const Color.fromARGB(255, 139, 195, 74),
      const Color.fromARGB(255, 205, 220, 57),
      const Color.fromARGB(255, 255, 193, 7),
      const Color.fromARGB(255, 255, 152, 0),
      const Color.fromARGB(255, 255, 87, 34),
      const Color.fromARGB(255, 121, 85, 72),
      const Color.fromARGB(255, 158, 158, 158),
      const Color.fromARGB(255, 96, 125, 139),
    ];

    return colors[name.length % colors.length];
  }
}