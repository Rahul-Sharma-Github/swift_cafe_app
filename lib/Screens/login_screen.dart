import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SwiftCafeLoginScreen(),
    );
  }
}

//
class SwiftCafeLoginScreen extends StatelessWidget {
  const SwiftCafeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Glassmorphism effect
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo and title
                Column(
                  children: [
                    Container(
                      width: 89,
                      height: 70,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/cafe_logo.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Swift',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Café',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '“Latte but never late”',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // Input fields
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    labelStyle: const TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.7)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.7)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Login button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.brown[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // Signup button
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: const BorderSide(color: Colors.white),
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Signup',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Privacy policy
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.8),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
