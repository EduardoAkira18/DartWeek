import 'package:flutter/widgets.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._(); // ??= se for nulo entao recebe ColorsApp
    return _instance!; // E como tem verificação de nulo em cima, pode forçar aqui
  }

  Color get primary => const Color(0XFF791435);
  Color get secundary => const Color(0XFFFDCE50);
  Color get yellow => const Color(0XFFFDCE50);
  Color get grey => const Color(0XFFCCCCCC);
  Color get greyDart => const Color(0xFF999999);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
