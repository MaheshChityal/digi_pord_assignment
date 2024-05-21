import 'package:digi_pord_assignment/main.dart';
import 'package:flutter/material.dart';

import 'product_card.dart';

class TrendingProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Trending Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(onPressed: () {}, child: Text('View all')),
          ],
        ),
        SizedBox(height: 8),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            ProductCard('Watch', '₹650', '60% off'),
            ProductCard('Sneakers', '₹650', '70% off'),
          ],
        ),
      ],
    );
  }
}
