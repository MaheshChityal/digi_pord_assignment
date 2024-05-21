import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String discount;
  ProductCard(this.title, this.price, this.discount);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/$title.jpg',
            height: 75,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,top: 8),
            child: Text(title, style: TextStyle(fontSize: 16)),
          ),
          Padding(padding: EdgeInsets.only(left:8 ),
          child: Text("WC Schaffhausen 2021 Pilot's Watch 'SIHH 2019' 44mm",style: TextStyle(fontSize: 12),),
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(price,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(discount, style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
