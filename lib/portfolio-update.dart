import 'package:flutter/material.dart';
import 'charts.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  Widget _buildPageIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      _buildPageIndicator(true),
                      const SizedBox(width: 2),
                      _buildPageIndicator(false),
                      const SizedBox(width: 2),
                      _buildPageIndicator(false),
                    ],
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Charts ()),
                      );

                    },
                    child: const Text(
                      'skip',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),


              Image.asset(
                'assets/images/anh1.png',
                height: 250,
              ),
              const SizedBox(height: 50),
              const Text(
                'Increase Work Effectiveness',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),

              // Mô tả
              const Text(
                'Time management and the determination of more important tasks will give your job statistics better and always improve',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),


              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {
                    print('Next pressed!');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Charts ()),
                    );

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
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
}