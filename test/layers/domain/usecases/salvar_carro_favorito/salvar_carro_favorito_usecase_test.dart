import 'package:clean_architectur/layers/domain/entities/carro_entity.dart';
import 'package:clean_architectur/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_architectur/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_architectur/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository{


  @override
  Future<bool> call(CarroEntity carroEntity) async{
    return carroEntity.valor > 0;
  }


}


main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity('placa1', 2, 1000.00);

    var result = await useCase(carro);

    expect(result, true);

  });

  test('Espero que nao salve o carro quando valor menor que zero', () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity('placa1', 2, 0);

    var result = await useCase(carro);

    expect(result, false);

  });




}