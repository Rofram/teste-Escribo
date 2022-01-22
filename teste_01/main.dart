void main() {
  print(SomarDivisiveis(10));
  print(SomarDivisiveis(11));
}

int SomarDivisiveis(int numero) {
  if (numero < 1) {
    return throw Exception('number is not positive');
  }
  var numeros = [for (var i = 1; i < numero; i++) i];
  var pegarDivisiveis = (n) => n % 3 == 0 || n % 5 == 0;
  var numerosDivisiveis = numeros.where(pegarDivisiveis);
  // print(numerosDivisiveis); // caso queira ver os numeros Divisiveis só descomentar essa linha
  return numerosDivisiveis.reduce((total, numero) => total + numero);
}