import 'package:picture_gallery/services/PicsumImage.dart';
import 'package:redux/redux.dart';
import 'package:picture_gallery/redux/actions/ImageFetchActions.dart';
import 'package:picture_gallery/models/ImageModelData.dart';
import 'package:picture_gallery/models/ImageModel.dart';
import 'package:flutter/material.dart';

final Reducer<dynamic> imageFetchReducer = combineReducers([
  TypedReducer<dynamic, ImageFetchSuccess>(_imageFetchSuccess),
  TypedReducer<dynamic, ImageFetchFail>(_imageFetchFail),
  TypedReducer<dynamic, ImageFetchLoading>(_imageFetchLoading),
]);

dynamic _imageFetchSuccess(dynamic state, ImageFetchSuccess action) {
  return action;
}

dynamic _imageFetchFail(dynamic state, ImageFetchFail action) {
  return Text('Error loading Images');
}

dynamic _imageFetchLoading(dynamic state, ImageFetchLoading action) async {
  PicsumImage picsumImageObj = PicsumImage();
  for (int i = 0; i < 10; i++) {
    dynamic myImage = await picsumImageObj.getImageData(i);

    ImageModel oneImage = ImageModel(
        author: myImage['author'],
        width: myImage['width'],
        height: myImage['height'],
        downloadURL: myImage['download_url'],
        isFavourited: false,
        totalFavouritedNumber: 0);
    action.images.addNewImage(oneImage);
    // ImageModelData().addNewImage(oneImage);

    // action.images.add(oneImage);
  }

  return action.images;
}
