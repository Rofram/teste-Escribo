from os import system

def rodar_desafio():
  print("""
  Qual teste deseja rodar?
  1 - Teste 1
  2 - Teste 2
  """)

  opcao = input("Digite a opção desejada: ")

  while opcao not in ["1", "2"]:
    print("Opção inválida!")
    opcao = input("Digite a opção desejada: ")
  
  if opcao == "1":
    print("""
    O primeiro teste foi implementado em duas linguagens:
    1 - Dart
    2 - Javascript
    """)

    desafio = input('Qual linguagem você quer rodar: ').lower()

    while desafio not in ["1", "2", "dart", "javascript"]:
      print("Valor inválido, experimente usar o numero da opção ou o nome da linguagem")
      desafio = input('Qual linguagem você quer rodar: ')
    
    if desafio in ["1", "dart"]:
      print("\nExecutando desafio 1 na linguagem Dart\n")
      system("dart teste_01/main.dart")

    if desafio in ["2", "javascript"]:
      print("\nExecutando desafio 1 na linguagem Javascript\n")
      system("node teste_01/main.js")
  else:
    print("\nExecutando desafio 2 (Cobras e Escadas)\n")
    system("cd teste_02 && flutter run || cd ..")


rodar_desafio()
