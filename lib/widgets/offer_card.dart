import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.pink[100],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('50-40% OFF',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text('Now in (product)\nAll colours',
                    style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                ElevatedButton(onPressed: () {}, child: Text('Shop Now')),
              ],
            ),
            Image.asset(
              'assets/Womens1.png',
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
