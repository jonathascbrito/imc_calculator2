import 'package:test/test.dart';
import '../lib/imc_calculator2.dart';

void main() {
  test('Testando cálculo de IMC', () {
    Pessoa pessoa = Pessoa(nome: 'João', peso: 70.0, altura: 1.75);
    expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
  });

  test('Testando categorias de IMC', () {
    Pessoa pessoaAbaixo = Pessoa(nome: 'Maria', peso: 50.0, altura: 1.75);
    expect(pessoaAbaixo.calcularIMC(), lessThan(18.5));

    Pessoa pessoaNormal = Pessoa(nome: 'Ana', peso: 60.0, altura: 1.70);
    expect(pessoaNormal.calcularIMC(), inInclusiveRange(18.5, 24.9));

    Pessoa pessoaSobrepeso = Pessoa(nome: 'Carlos', peso: 80.0, altura: 1.70);
    expect(pessoaSobrepeso.calcularIMC(), inInclusiveRange(25, 29.9));

    Pessoa pessoaObesidade = Pessoa(nome: 'José', peso: 100.0, altura: 1.70);
    expect(pessoaObesidade.calcularIMC(), greaterThanOrEqualTo(30));
  });
}
