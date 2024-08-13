import 'package:calculadora_imc/console_utils.dart';
import 'package:calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  print("Seja bem-vindo(a) à calculadora de IMC");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome: ");

  double p = ConsoleUtils.lerDoubleComTexto("Digite o peso: ");
  double peso = ConsoleUtils.validaDouble(p);

  double a = ConsoleUtils.lerDoubleComTexto("Digite a altura: ");
  double altura = ConsoleUtils.validaDouble(a);

  Pessoa p1 = Pessoa(nome, peso, altura);

  p1.calculaIMC(nome, peso, altura);
}
