import 'package:flutter/material.dart';
import 'package:rent_cars_app/presentation/pages/car_list_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 109, 106, 106),
      // appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding2.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Premium cars. \nEnjoy the Luxury',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Premium and prestige cars daily rental.\n Experience the thrill at lower price.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 320,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CarListScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}