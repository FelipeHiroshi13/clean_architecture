import 'package:clean_architectur/layers/domain/entities/carro_entity.dart';

import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {

  @override
  CarroEntity call(String cor) {
    if(cor.contains('vermelho')){
      return CarroEntity('ABC123', 4, 5000.00);
    }

    return CarroEntity('QWE', 2, 20000.00);
  }
  
}