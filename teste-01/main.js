function SomarDivisiveis(numero) {
  const numeros = Array.from({ length: numero - 1 }, (_, index) => index + 1);
  const PegarDivisiveis = (n) => n % 3 == 0 || n % 5 == 0;
  const numerosDivisiveis = numeros.filter(PegarDivisiveis);
  // console.log(numerosDivisiveis) // caso queira ver os numeros Divisiveis só descomentar essa linha
  return numerosDivisiveis.reduce((total, numero) => total + numero);
}


console.log(SomarDivisiveis(10));
console.log(SomarDivisiveis(11));