import 'package:namefully/namefully.dart';

class Initials {
  static String generate(String name) {
    List<String> parts = name.split(' ');
    if(parts.length == 1){
      return name.substring(0,2).toUpperCase();
    }
    var nmf = Namefully(name);
    return nmf.initials().join();
  }
}