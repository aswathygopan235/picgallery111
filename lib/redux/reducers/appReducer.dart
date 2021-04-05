import 'package:picture_gallery/redux/app_states/AppState.dart';
import 'package:picture_gallery/redux/actions/FavouriteCounterActions.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState prevState, dynamic action) {
  AppState newState = AppState(
    numberFavouritedPics: prevState.numberFavouritedPics,
    images: prevState.images,
    totalFavouritedNumber: prevState.totalFavouritedNumber,
    author: prevState.author,
    downloadURL: prevState.downloadURL,
    imageURL: prevState.imageURL,
    height: prevState.height,
    width: prevState.width,
    isFavourited: prevState.isFavourited,
  );
  return newState;
}
