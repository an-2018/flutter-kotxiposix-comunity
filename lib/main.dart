import 'package:flutter/material.dart';
import 'package:kotxiposix_comunity/adaptive_layout/adaptive.dart';
import 'package:kotxiposix_comunity/pages/home/home_page.dart';

void main() {
  HomePage();
  var p = Pessoa(90.0, 9.0, "name");
  print("${p._nome}");
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KotxiPOSIX Community',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class Pessoa {
  // Variáveis
  String _nome;
  double _peso;
  double _altura;

  // Getter e Setter do nome
  String get nome {
    return _nome;
  }

  set nome(String nome) {
    this._nome = nome;
  }

  // Getter e Setter do nome
  double get peso {
    return _peso;
  }

  set peso(double peso) {
    this._peso = peso;
  }

  // Getter e Setter do nome
  double get altura {
    return _altura;
  }

  set altura(double altura) {
    this._altura = altura;
  }

  // Construtor (atributos privados não podem ser opcionais)
  Pessoa(this._peso, this._altura, this._nome);

  // Método que calcula o IMC da pessoa
  // Quando o método tem um comando só, ele pode ser escrito desta forma
  double calcularImc() => peso / (altura * altura);

  // Método que retorna uma classificação de acordo com o IMC
  String classificar({double imc}) {
    if (imc == null) {
      imc = calcularImc();
    }

    if (imc < 18.5)
      return "Abaixo do peso";
    else if (imc < 25.0)
      return "Peso normal";
    else if (imc < 30.0)
      return "Sobrepeso";
    else if (imc < 35.0)
      return "Obesidade grau 1";
    else if (imc < 40.0)
      return "Obesidade grau 2";
    else
      return "Obesidade grau 3";
  }

  // Método que exibe todas as informações da pessoa
  void exibirInformacoes() {
    // Informações básicas
    print("Nome: ${nome ?? "sem nome"}");
    print("Peso: $peso kg");
    print("Altura: $altura m");
    // Informações calculadas
    double imc = calcularImc();
    print("IMC: ${imc.toStringAsFixed(2)}");
    print("Classificação: ${classificar(imc: imc)}");
  }
}
