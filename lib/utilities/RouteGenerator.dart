import 'package:flutter/material.dart';
import 'package:picture_gallery/screens/GalleryGridScreen.dart';
import 'package:picture_gallery/screens/ImageDetailsScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case GalleryGridScreen.id:
        return MaterialPageRoute(
            builder: (BuildContext context) => GalleryGridScreen());

      case ImageDetailsScreen.id:
        return MaterialPageRoute(builder: (BuildContext context) {
          ImageDetailsScreen argument = args;
          return ImageDetailsScreen(
            imageTag: argument.imageTag,
            imageURL: argument.imageURL,
          );
        });

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => GalleryGridScreen());
    }
  }
}
