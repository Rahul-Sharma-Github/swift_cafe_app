import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFF5A5A5A), // Background color for the whole app
      body: SafeArea(
        child: Column(
          children: [
            // Top bar with profile and date
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '20/12/2022',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '👋',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Joshua Scanlan',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined, color: Colors.white),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/cafe_logo.jpg'),
                        radius: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search favorite Beverages',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),
            ),

            // Spacing
            const SizedBox(height: 20),

            // Most Popular Beverages Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Most Popular Beverages',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            // Popular Beverages Cards
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return const BeverageCard();
                  },
                ),
              ),
            ),

            // Get it instantly section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Get it instantly',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            // Latte Information Card
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: LatteCard(),
            ),

            // Bottom Navigation Bar
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}

class BeverageCard extends StatelessWidget {
  const BeverageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF4B4B4B),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/card2.png',
            height: 80,
          ),
          const Text(
            'Hot Cappuccino',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Text(
            'Espresso, Steamed Milk',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 14),
              Text(
                '4.9',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                ' (458)',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class LatteCard extends StatelessWidget {
  const LatteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF4B4B4B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lattè',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 14),
                    Text(
                      '4.9',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      ' (458)',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  'Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk, and a thin layer of froth.',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/detail1.png',
            height: 80,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Text('ADD'),
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Color(0xFF4B4B4B),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.explore, color: Colors.white),
            Icon(Icons.shopping_cart, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
