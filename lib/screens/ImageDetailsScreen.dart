import 'package:flutter/material.dart';
import 'package:picture_gallery/redux/app_states/appState.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:picture_gallery/widgets/ImageTile.dart';

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
                return Column(children: [
                  Hero(
                    tag: args.imageTag,
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
                  Text('This is some test text'),
                ]);
              }),
        ),
      ),
    );
  }
}
