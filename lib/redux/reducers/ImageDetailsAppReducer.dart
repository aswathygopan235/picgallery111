import 'package:picture_gallery/redux/app_states/AppState.dart';

AppState imageDetailsAppReducer(AppState prevState, dynamic action) {
  AppState newState = AppState(
    numberFavouritedPics: prevState.numberFavouritedPics,
    images: prevState.images,
    totalFavouritedNumber: prevState.totalFavouritedNumber,
    author: prevState.author,
    downloadURL: prevState.downloadURL,
    imageURL: prevState.downloadURL,
    height: prevState.height,
    width: prevState.width,
    isFavourited: prevState.isFavourited,
  );
  return newState;
}
