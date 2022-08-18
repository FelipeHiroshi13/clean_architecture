import 'package:clean_architectur/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';


main(){

  test('Espero que a entidade nao seja nula', () {

    CarroEntity carroEntity = CarroEntity('ABC123', 2, 1000.00);

    expect(carroEntity, isNotNull);

  });

  test('Espero que a quantidade seja 2', () {

    CarroEntity carroEntity = CarroEntity('ABC123', 2, 1000.00);

    expect(carroEntity.qtdPortas, 2);

  });

  test('Espero que o valor real seja 2000', () {

    CarroEntity carroEntity = CarroEntity('ABC123', 2, 1000.00);

    var resultadoEsperado = 2000.00;

    expect(carroEntity.valorReal, resultadoEsperado);

  });

  test('Espero que o valor real seja 0.00', () {

    CarroEntity carroEntity = CarroEntity('ABC123', 0, 1000.00);

    var resultadoEsperado = 0.00;

    expect(carroEntity.valorReal, resultadoEsperado);

  });


  test('Espero que o valor real seja 30000.00', () {

    CarroEntity carroEntity = CarroEntity('ABC123', 2, 15000.00);

    var resultadoEsperado = 30000.00;

    carroEntity.setLogicaValor();

    expect(carroEntity.valor, resultadoEsperado);

  });





}