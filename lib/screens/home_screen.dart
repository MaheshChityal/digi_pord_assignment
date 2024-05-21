import 'package:flutter/material.dart';

import '../widgets/category_card.dart';
import '../widgets/deal_of_day_card.dart';
import '../widgets/new_arrivals.dart';
import '../widgets/offer_card.dart';
import '../widgets/sponsored_card.dart';
import '../widgets/trending_products.dart';

class ShopHomePage extends StatefulWidget {
  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stylish'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/Womens1.png'),
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Search bar
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search any Product...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 16),
          // Categories
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('All Featured',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: Text('Sort')),
                  TextButton(onPressed: () {}, child: Text('Filter')),
                ],
              )
            ],
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard('Beauty'),
                CategoryCard('Fashion'),
                CategoryCard('Kids'),
                CategoryCard('Mens'),
                CategoryCard('Womens'),
              ],
            ),
          ),
          SizedBox(height: 16),
          OfferCard(),
          SizedBox(height: 16),
          DealOfDayCard(),
          SizedBox(height: 16),
          TrendingProducts(),
          SizedBox(height: 16),
          NewArrivals(),
          SizedBox(height: 16),
          SponsoredCard(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Settings'),
        ],
      ),
    );
  }
}
