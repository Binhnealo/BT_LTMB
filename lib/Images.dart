import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Images', home: Images(),
    debugShowCheckedModeBanner: false,));
}
class Images extends StatelessWidget {
  const Images ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Images',
            style: TextStyle(color: Color(0xFF2196F3), fontWeight: FontWeight.bold, fontSize: 24 ),
          )
      ),
      body: Center(

        child: Padding(
            padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(20), // bo tròn 20px
                     child: Image.network(
                       'https://giaothongvantaitphcm.edu.vn/wp-content/uploads/2025/01/Logo-GTVT.png',
                       width: 350,
                       height: 200,
                       fit: BoxFit.cover,
                     ),
                   ),
                    const SizedBox(height: 30),
                    const Text(
                      'https://giaothongvantaitphcm.edu.vn/wp-content/uploads/2025/01/Logo-GTVT.png',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // bo tròn 20px
                      child: Image.asset(
                        'assets/images/uth_bg.jpg',
                        width: 350,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      'In app',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),


                  ]
              ),
        ),
      ),
    );
  }
}