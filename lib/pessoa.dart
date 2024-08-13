import 'dart:math';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome, this._peso, this._altura);

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void calculaIMC(String nome, double peso, double altura) {
    nome = _nome;
    peso = _peso;
    altura = _altura;
    double imc = peso / (pow(altura, 2));

    print("Olá $nome! Seu IMC é: $imc.");

    try {
      switch (imc) {
        case (< 16):
          print("Sua classificação: Magreza grave");
          break;

        case (>= 16 && < 17):
          print("Sua classificação: Magreza moderada");
          break;

        case (>= 17 && < 18.5):
          print("Sua classificação: Magreza leve");
          break;

        case (>= 18.5 && < 25):
          print("Sua classificação: Saudável");
          break;

        case (>= 25 && < 30):
          print("Sua classificação: Sobrepeso");
          break;

        case (>= 30 && < 35):
          print("Sua classificação: Obesidade Grau I");
          break;

        case (>= 35 && < 40):
          print("Sua classificação: Obesidade Grau II (severa)");
          break;

        case (>= 40):
          print("Sua classificação: Obesidade Grau III (mórbida)");
          break;

        default:
          print("Informe valores válidos para Peso e Altura");
          break;
      }
    } catch (e) {
      print("Valores inválidos. Tente novamente!");
    }
  }
}
