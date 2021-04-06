import 'package:picture_gallery/models/ImageModel.dart';

class ImageModelData {
  final List<ImageModel> images;
  final bool isLoading;
  ImageModelData({this.images, this.isLoading});

  void addNewImage(ImageModel newImage) {
    images.add(newImage);
  }
}
