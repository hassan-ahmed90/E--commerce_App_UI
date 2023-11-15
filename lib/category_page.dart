import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  final String? image;
  final String? title;
  final String? tag;
  const CategoryPage({super.key,required this.image,required this.title,required this.tag});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

      ),
    );
  }
}
