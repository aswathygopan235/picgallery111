import 'package:flutter/material.dart';
import 'package:picture_gallery/redux/app_states/AppState.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:picture_gallery/widgets/ImageTile.dart';
import 'package:like_button/like_button.dart';

//Clicking on individual images in GalleryGridScreen.dart expands the image and opents it in this page
class ImageDetailsScreen extends StatelessWidget {
  static const String id = 'image_details_screen';
  final Store<AppState> store;
  final String imageTag;
  final String imageURL;
  ImageDetailsScreen({this.store, this.imageTag, this.imageURL});

  @override
  Widget build(BuildContext context) {
    final ImageTile args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: StoreConnector<AppState, Store<AppState>>(
              converter: (store) => store,
              builder: (context, state) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: args.imageTag,
                        child: AspectRatio(
                          aspectRatio: 4 / 3,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 1,
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(args.imageURL),
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 75.0,
                        child: Row(
                          children: [
                            LikeButton(
                              padding: EdgeInsets.only(left: 20.0, right: 10.0),
                              likeBuilder: (bool isLiked) {
                                return Icon(
                                  Icons.favorite,
                                  color: isLiked ? Colors.red : Colors.grey,
                                  size: 30.0,
                                );
                              },
                              likeCount: 0,
                              countBuilder:
                                  (int count, bool isLiked, String text) {
                                var color = isLiked ? Colors.red : Colors.grey;
                                Widget result;
                                if (count == 0) {
                                  result = Text(
                                    'Favourite',
                                    style: TextStyle(color: color),
                                  );
                                } else
                                  result = Text(
                                    text,
                                    style: TextStyle(color: color),
                                  );
                                return result;
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(
                                Icons.cloud_download_outlined,
                                size: 30.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Colors.grey[300]),
                      )
                    ]);
              }),
        ),
      ),
    );
  }
}
