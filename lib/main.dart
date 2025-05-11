import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           leading:  IconButton(onPressed: () {
        print('ok');
        }, icon: const Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {
          print('ok');
        }, icon: const Icon(Icons.grid_view_outlined))],

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/images/anhcho.jpg'),
              ),

              Text("MR.TÈO",
              style: TextStyle(fontSize: 24.0,
                fontWeight: FontWeight.bold,

              ),
              ),
              Text("Ninh Thuận, Việt Nam",
                style: TextStyle(fontSize: 18.0,
                fontWeight: FontWeight.bold,
                  color: Colors.grey

              ),
              ),

            ],
          ),

        ),





        ),
      );
  }

}