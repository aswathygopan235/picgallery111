import 'package:picture_gallery/redux/app_states/AppState.dart';

AppState appReducer(AppState prevState, dynamic action) {
  AppState newState = AppState(
    numberFavouritedPics: prevState.numberFavouritedPics,
    images: prevState.images,
  );
  return newState;
}
