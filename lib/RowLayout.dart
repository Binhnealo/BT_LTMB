import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Row Layout', home: RowLayout(),
    debugShowCheckedModeBanner: false,));
}
class RowLayout extends StatelessWidget {
  const RowLayout ({super.key});
  Widget buildRowLayout() {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(20),
            ),
            ),
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ]
      ),
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Row Layout',
            style: TextStyle(color: Color(0xFF2196F3), fontWeight: FontWeight.bold, fontSize: 24 ),
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              buildRowLayout(),
              buildRowLayout(),
              buildRowLayout(),
              buildRowLayout(),
            ],
          ),
        ),
      ),
    );
  }
}