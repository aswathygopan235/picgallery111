import 'package:picture_gallery/services/Networking.dart';

const picsum_api_url = 'https://picsum.photos';

class PicsumImage {
  Future<dynamic> getImageData(int imgNumber) async {
    String url = '$picsum_api_url/id/$imgNumber/info';

    NetworkHelper networkHelper = NetworkHelper(url);
    var imageData = await networkHelper.getData();

    return (imageData);
  }
}
