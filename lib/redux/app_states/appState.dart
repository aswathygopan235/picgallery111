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
      images: images ?? this.images,
      author: author ?? this.author,
      height: height ?? this.height,
      width: width ?? this.width,
      isFavourited: isFavourited ?? this.isFavourited,
      imageURL: imageURL ?? this.imageURL,
      downloadURL: downloadURL ?? this.downloadURL,
      totalFavouritedNumber:
          totalFavouritedNumber ?? this.totalFavouritedNumber,
    );
  }

  //Get number of favourited pictures
  int get getNumberFavouritedPics {
    return numberFavouritedPics;
  }

// Initialize AppState
  static AppState initializeState() {
    return new AppState(
        numberFavouritedPics: 0,
        images: [],
        author: 'Author name',
        height: 50,
        width: 50,
        isFavourited: false,
        imageURL: 'url/to/image',
        downloadURL: 'url/to/download',
        totalFavouritedNumber: 0);
  }
}
