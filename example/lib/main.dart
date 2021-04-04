import 'package:example/ui/normal_page.dart';
import 'package:example/ui/normal_with_diff_response_page.dart';
import 'package:example/ui/pagination_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: NormalPage(),
      // home: NormalWithDiffResPage(),
      // home: NormalWithDiffResPage(),
      home: PaginationPage(),
    );
  }
}
