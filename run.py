from os import system

def rodar_desafio():
  print("""
  O primeiro teste foi implementado em duas linguagens:
  1. Dart
  2. Javascript
  """)

  desafio = input('Qual linguagem você quer rodar: ').lower()

  while desafio not in ["1", "2", "dart", "javascript"]:
    print("Valor inválido, experimente usar o numero da opção ou o nome da linguagem")
    desafio = input('Qual linguagem você quer rodar: ')
  
  if desafio in ["1", "dart"]:
    print("\nExecutando desafio 1 na linguagem Dart\n")
    system("dart teste-01/main.dart")

  if desafio in ["2", "javascript"]:
    print("\nExecutando desafio 1 na linguagem Javascript\n")
    system("node teste-01/main.js")


rodar_desafio()
