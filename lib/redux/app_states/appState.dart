import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:picture_gallery/models/ImageModel.dart';

@immutable
class AppState {
  final int numberFavouritedPics;
  final List<ImageModel> images;
  final String author;
  final int width;
  final int height;
  final String downloadURL;
  final String imageURL;
  final bool isFavourited;
  final int totalFavouritedNumber;

  const AppState({
    @required this.numberFavouritedPics,
    @required this.images,
    @required this.author,
    @required this.height,
    @required this.width,
    @required this.isFavourited,
    @required this.imageURL,
    @required this.downloadURL,
    @required this.totalFavouritedNumber,
  });

  AppState copyWith({numberFavouritedPics, images}) {
    return AppState(
      numberFavouritedPics: numberFavouritedPics ?? this.numberFavouritedPics,
      images: numberFavouritedPics ?? this.images,
    );
  }

  //Get number of favourited pictures
  int get getNumberFavouritedPics {
    return numberFavouritedPics;
  }

// Initialize AppState
  static AppState initializeState() {
    return new AppState(numberFavouritedPics: 0, images: []);
  }
}
