import 'package:flutter/material.dart';
import 'package:flutter_application_1/productpage.dart';
import 'package:flutter_application_1/main.dart';

class HomePage extends StatelessWidget {
  final String clearanceImageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbVWYuUeGjIBAuFx3ykfZzGnsnOvEdQY4Q3ocX0h6h5bW6WTtEtBYbnkiUJlKh5xTYfAQ&usqp=CAU'; //clearance image
  final String airPodsImageUrl =
      'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1632861342000'; //airpods
  final String macBookImageUrl =
      'https:encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS97gV57QtO0p0PzdingpVk-qLyfs_ar0FVxA&s'; //macbook
  final String s24ImageUrl =
      'data:image/jpeg;base64,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'; //S23
  final String iphone14ImageUrl =
      'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-card-40-iphone15prohero-202309_FMT_WHH?wid=508&hei=472&fmt=p-jpg&qlt=95&.v=1693086369818'; //iphone 14
  final String airPodsMaxImageUrl =
      'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airpods-max-select-spacegray-202011_FV1_FMT_WHH?wid=940&hei=800&fmt=jpeg&qlt=90&.v=1604776025000'; //airpodmax
  final String flipImageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9KKX93v-56e5uAd_6yZSq1uj7GInEHMrdUQ&s'; //flip

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSearchBar(),
              SizedBox(height: 20),
              buildClearanceSaleBanner(),
              SizedBox(height: 20),
              buildCategorySection(),
              SizedBox(height: 20),
              buildProductGrid(context), // Updated this line
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  Widget buildClearanceSaleBanner() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clearance Sales',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Up to 50%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            clearanceImageUrl,
            width: 80,
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget buildCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        buildCategoryTabs(),
      ],
    );
  }

  Widget buildCategoryTabs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
           buildCategoryTab('All', isSelected: true),
          buildCategoryTab('Smartphones'),
          buildCategoryTab('Headphones'),
          buildCategoryTab('Laptops'),
          buildCategoryTab('Speaker'),
          buildCategoryTab('Accesories'),
        ],
      ),
    );
  }

  Widget buildCategoryTab(String label, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        backgroundColor: isSelected ? Colors.green : Colors.grey[200],
        label: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildProductGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        buildProductCard(context, 'AirPods', airPodsImageUrl, 132.00, 4.9),
        buildProductCard(context, 'MacBook Air 13', macBookImageUrl, 1100.00, 5.0),
        buildProductCard(context, 'iPhone 14 Pro', iphone14ImageUrl, 1100, 4.5),
        buildProductCard(context, 'AirPod Max', airPodsMaxImageUrl, 399, 4.2),
        buildProductCard(context, 'Samsung Galaxy Z Flip4', flipImageUrl, 1499, 4.2),
      ],
    );
  }

  Widget buildProductCard(BuildContext context, String name, String imageUrl, double price, double rating) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductPage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    imageUrl,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text('\$$price'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 18),
                  SizedBox(width: 4),
                  Text(rating.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}