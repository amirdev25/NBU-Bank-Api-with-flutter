import 'package:flutter/material.dart';
import 'package:nbu_courses_in_flutter/ui/hom_page.dart';

void main() {
  runApp(const NBUApp());
}

class NBUApp extends StatelessWidget {
  const NBUApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
