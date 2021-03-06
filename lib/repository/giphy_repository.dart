import 'package:get/get.dart';
import 'package:gifs/models/giphy_model.dart';

class GiphyRepository extends GetConnect {

  Future<List<GiphyModel>> findAll() async {
    final response = await get<List<GiphyModel>>(
        'https://api.giphy.com/v1/gifs/trending',
        query: {'api_key': 'XDuWe9CsDj1KNm19U6bXViGEq3z17ZuX'},
        decoder: (response) {
          return response['data']?.map<GiphyModel>((d) => GiphyModel(d['id'], d['images']['downsized']['url']))?.toList() ?? [];
        }
    );

    if(response.hasError) {
      throw Exception(response.statusText);
    }

    return response.body;
  }
}