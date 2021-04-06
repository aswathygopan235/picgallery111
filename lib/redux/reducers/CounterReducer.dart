import 'package:redux/redux.dart';
import 'package:picture_gallery/redux/actions/FavouriteCounterActions.dart';

final Reducer<int> counterReducer = combineReducers([
  TypedReducer<int, IncrementFavouriteCounter>(_incrementFavouriteCounter),
  TypedReducer<int, DecrementFavouriteCounter>(_decrementFavouriteCounter),
]);

int _incrementFavouriteCounter(int state, IncrementFavouriteCounter action) {
  return action.numberFavouritedImages + 1;
}

int _decrementFavouriteCounter(int state, DecrementFavouriteCounter action) {
  return action.numberFavouritedImages - 1;
}
