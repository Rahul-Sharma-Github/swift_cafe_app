import 'package:flutter/material.dart';

class CoffeeOrderScreen extends StatefulWidget {
  const CoffeeOrderScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CoffeeOrderScreenState createState() => _CoffeeOrderScreenState();
}

class _CoffeeOrderScreenState extends State<CoffeeOrderScreen> {
  int quantity = 1;
  bool isFullCreamMilk = true;
  bool isSugarX2 = true;
  bool isHighPriority = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
          child: Column(
            children: [
              // Coffee Image section
              Stack(
                children: [
                  Image.asset(
                    'assets/coffee.jpg', // Add your own image path here
                    height: 500,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),

              // Coffee description and options section
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/background.jpg'),
                      fit: BoxFit.cover,
                      // colorFilter:
                      //     ColorFilter.mode(Colors.grey, BlendMode.srcOut),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Coffee Title and Rating
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lattè',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white.withOpacity(0.8),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Icon(Icons.star,
                                        color: Colors.amber, size: 16),
                                    const SizedBox(width: 4),
                                    Text(
                                      '(458)',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Icon(
                                      Icons.square,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // Quantity Selector
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      setState(() {
                                        if (quantity > 1) quantity--;
                                      });
                                    },
                                  ),
                                  Text('$quantity'),
                                  IconButton(
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                        quantity++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 32),

                        // Coffee Description
                        Text(
                          "Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),

                        const SizedBox(height: 32),

                        // Choice of Cup Filling
                        Text(
                          'Choice of Cup Filling',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: const ChoiceChip(
                                selectedColor: Colors.green,
                                label: Text(
                                  'Full',
                                  style: TextStyle(color: Colors.black),
                                ),
                                selected: true,
                              ),
                            ),
                            Transform.scale(
                              scale: 0.8,
                              child: const ChoiceChip(
                                label: Text(
                                  '1/2 Full',
                                  style: TextStyle(color: Colors.black),
                                ),
                                selected: false,
                              ),
                            ),
                            Transform.scale(
                              scale: 0.8,
                              child: const ChoiceChip(
                                label: Text(
                                  '3/4 Full',
                                  style: TextStyle(color: Colors.black),
                                ),
                                selected: false,
                              ),
                            ),
                            Transform.scale(
                              scale: 0.8,
                              child: const ChoiceChip(
                                label: Text(
                                  '1/4 Full',
                                  style: TextStyle(color: Colors.black),
                                ),
                                selected: false,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 32),

                        // Choice of Milk
                        Text(
                          'Choice of Milk',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Column 1
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildMilkOption('Skim Milk', false),
                                _buildMilkOption('Almond Milk', false),
                                _buildMilkOption('Soy Milk', false),
                                _buildMilkOption('Lactose Free Milk', false),
                              ],
                            ),
                            // Column 2
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildMilkOption('Full Cream Milk', false),
                                _buildMilkOption('Oat Milk', false),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 32),

                        // Choice of Sugar
                        Text(
                          'Choice of Sugar',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 50.0, // gap between adjacent chips
                          runSpacing: 5.0, // gap between lines
                          children: [
                            _buildSugarOption('Sugar X1', false),
                            _buildSugarOption('½ Sugar', false),
                            _buildSugarOption('Sugar X2', isSugarX2),
                            _buildSugarOption('No Sugar', false),
                          ],
                        ),

                        const SizedBox(height: 24),

                        // High Priority and Submit button
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 48, 47, 47),
                          ),
                          child: Row(
                            children: [
                              Checkbox(
                                value: isHighPriority,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isHighPriority = value ?? false;
                                  });
                                },
                              ),
                              Text(
                                'High Priority',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.warning_rounded,
                                color: Colors.pink[300],
                                size: 18.0,
                              ),
                              const Spacer(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {
                                  // Submit action here
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Milk Option Widget
  Widget _buildMilkOption(String label, bool selected) {
    return Row(
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 0.7,
              child: Switch(
                value: selected,
                onChanged: (bool newValue) {
                  setState(() {
                    // Logic to handle selection
                  });
                },
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Sugar Option Widget
  Widget _buildSugarOption(String label, bool selected) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 0.7,
              child: Switch(
                materialTapTargetSize: MaterialTapTargetSize.padded,
                value: selected,
                onChanged: (bool newValue) {
                  setState(() {
                    // Logic to handle selection
                  });
                },
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
