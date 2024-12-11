import 'package:flutter/material.dart';
import 'package:codelab2/app/modules/home/views/article_page.dart'; // Import halaman article

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArticlePage(),
    );
  }
}
