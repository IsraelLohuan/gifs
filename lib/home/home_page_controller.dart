import 'package:get/get.dart';
import 'package:gifs/models/giphy_model.dart';
import 'package:gifs/repository/giphy_repository.dart';

class HomePageController extends GetxController with StateMixin<List<GiphyModel>> {

  final GiphyRepository _repository;

  HomePageController(this._repository);

  @override
  void onInit() {
    super.onInit();

    _repository.findAll().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (error) {
      print(error);
      change(null, status: RxStatus.error('Erro ao Buscar Gifs'));
    });
  }
}