import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return 0;
    }
  }

  static double lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double validaDouble(double d) {
    while (d == 0) {
      double valor = lerDoubleComTexto("Informe um valor válido: ");
      d = valor;
    }
    return d;
  }
}
