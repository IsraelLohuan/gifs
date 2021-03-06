import 'package:flutter/material.dart';
import 'package:gifs/models/giphy_model.dart';
import 'package:transparent_image/transparent_image.dart';

class GridGifs extends StatelessWidget {

  final List<GiphyModel> gifs;

  const GridGifs(this.gifs);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: gifs.length,
      itemBuilder: (_, index) {
        final gif = gifs[index];

        return FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: gif.url,
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
    );
  }
}
