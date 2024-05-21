import 'package:flutter/material.dart';

class NewArrivals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('New Arrivals',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(onPressed: () {}, child: Text('View all')),
          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 250,
          color: Colors.orange[100],
          child: Image.asset(
            "assets/SummerSale.jpg",
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
