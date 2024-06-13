import 'package:flutter/material.dart';
import 'styles/colors.dart';

void main() => runApp(Gallery());

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColors.cool,
      debugShowCheckedModeBanner: false,
      home: GalleryPage(),
    );
  }
}

class GalleryPage extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
    'assets/images/pic4.jpg',
    'assets/images/pic5.jpg',
    'assets/images/pic6.jpg',
    'assets/images/pic7.jpg',
  ];

  GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cool,
      appBar: AppBar(
        title: const Text('Gallery'),
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Image.asset(
                imageUrls[index],
                height: 30,
                width: 20,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
