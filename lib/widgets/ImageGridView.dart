import 'package:picture_gallery/models/ImageModelData.dart';
import 'package:picture_gallery/redux/actions/ImageFetchActions.dart';
import 'package:picture_gallery/redux/app_states/AppState.dart';
import 'package:picture_gallery/widgets/ImageTile.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

//Widget to show the images in grid format
class ImageGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int index = 0;
    return StoreConnector<AppState, Store<AppState>>(
        converter: (store) => store,
        onInit: (store) {
          store.dispatch(ImageFetchLoading());
        },
        builder: (context, store) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // childAspectRatio: MediaQuery.of(context).size.width /
              //     (MediaQuery.of(context).size.height / 1),
              childAspectRatio: .75,
            ),
            // itemCount: items.length,

            itemCount: 5,
            itemBuilder: (context, index) {
              // switch (snapshot.connectionState) {
              //   case ConnectionState.none:
              //     return Text('No Connection state.');
              //   case ConnectionState.active:
              //   case ConnectionState.waiting:
              //     return Text('Awaiting result...');
              //   case ConnectionState.done:
              //     if (snapshot.hasError)
              //     store.state.
              //       return Text('Error: ${snapshot.error}');
              // print('Printing store from ImagGridView:');
              // print(store.state.images.isLoading);
              return ImageTile(
                imageURL: 'https://picsum.photos/id/10/2500/1667',
                imageTag: 'image$index',
              );
            },
          );
        });
  }
}
