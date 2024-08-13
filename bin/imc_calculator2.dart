
import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double calcularIMC() {
    return peso / (altura * altura);
  }
}

void main() {
  try {
    print('Digite o nome da pessoa:');
    String nome = stdin.readLineSync()!;

    print('Digite o peso da pessoa (em kg):');
    double peso = double.parse(stdin.readLineSync()!);

    print('Digite a altura da pessoa (em metros):');
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    double imc = pessoa.calcularIMC();

    print('O IMC de $nome é ${imc.toStringAsFixed(2)}');

    if (imc < 18.5) {
      print('Abaixo do peso');
    } else if (imc >= 18.5 && imc < 24.9) {
      print('Peso normal');
    } else if (imc >= 25 && imc < 29.9) {
      print('Sobrepeso');
    } else {
      print('Obesidade');
    }
  } catch (e) {
    print('Erro ao calcular o IMC: ${e.toString()}');
  }
}