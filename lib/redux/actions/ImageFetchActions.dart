import 'package:picture_gallery/models/ImageModel.dart';

class ImageFetchSuccess {
  // final List<ImageModel> images;
  // ImageFetchSuccess(this.images);
}

class ImageFetchFail {}

class ImageFetchLoading {
  final List<ImageModel> images;

  ImageFetchLoading({this.images}) {
    print(this.images);
  }
  // for (int i = 0; i < 10; i++) {
  //   PicsumImage picsumImageObj = PicsumImage();
  //   dynamic myImage = picsumImageObj.getImageData(i);
  //   ImageModel oneImage = ImageModel(
  //       author: myImage['author'],
  //       width: myImage['width'],
  //       downloadURL: myImage['download_url'],
  //       isFavourited: false,
  //       totalFavouritedNumber: 0);
  //   ImageModelData().addNewImage(oneImage);

}
