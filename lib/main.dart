import 'package:flutter/material.dart';
import 'package:screens/screens/explore_collection_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExploreCollectionCard(
        title: 'ExploreCollectionCard',
        bodyText: 'Here We Go',
        onTap: () {},
        imageUrl: '',
      ),
    );
  }
}
