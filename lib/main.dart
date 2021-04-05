import 'package:flutter/material.dart';
import 'package:picture_gallery/screens/GalleryGridScreen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:picture_gallery/redux/reducers/AppReducer.dart';
import 'package:picture_gallery/redux/app_states/AppState.dart';
import 'package:picture_gallery/screens/ImageDetailsScreen.dart';

void main() {
  final store =
      Store<AppState>(appReducer, initialState: AppState.initializeState());
  runApp(StoreProvider(store: store, child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.purple,
      ),
      initialRoute: GalleryGridScreen.id,
      routes: {
        GalleryGridScreen.id: (context) => GalleryGridScreen(),
        ImageDetailsScreen.id: (context) => ImageDetailsScreen(),
      },
    );
  }
}
