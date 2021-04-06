import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:picture_gallery/models/ImageModelData.dart';

@immutable
class AppState {
  final int numberFavouritedPics;
  final ImageModelData images;

  const AppState({
    @required this.numberFavouritedPics,
    @required this.images,
  });

  AppState copyWith({
    numberFavouritedPics,
    images,
  }) {
    return AppState(
      numberFavouritedPics: numberFavouritedPics ?? this.numberFavouritedPics,
      images: images ?? this.images,
    );
  }

// Initialize AppState
  static AppState initializeState() {
    ImageModelData emptyImageModelData =
        ImageModelData(images: [], isLoading: false);
    return new AppState(
      numberFavouritedPics: 0,
      images: emptyImageModelData,
    );
  }
}
