import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final int numberFavouritedPics;

  const AppState({
    @required this.numberFavouritedPics,
  });

  AppState copyWith({numberFavouritedPics}) {
    return AppState(
      numberFavouritedPics: numberFavouritedPics ?? this.numberFavouritedPics,
    );
  }

  //Get number of favourited pictures
  int get getNumberFavouritedPics {
    return numberFavouritedPics;
  }

// Initialize AppState
  static AppState initializeState() {
    return new AppState(numberFavouritedPics: 1);
  }
}
