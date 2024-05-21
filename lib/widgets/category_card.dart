import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  CategoryCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
                'assets/$title.jpg'), 
          ),
          SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}
