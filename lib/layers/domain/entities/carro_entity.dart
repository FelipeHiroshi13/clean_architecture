class CarroEntity {


  String placa;
  int qtdPortas;
  double valor;

  CarroEntity(this.placa, this.qtdPortas, this.valor);


  double get valorReal {
    return valor * qtdPortas;
  }

  setLogicaValor(){
    if(valorReal > 10000.00){
      valor *= 2;
    }
  }



}