import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AgeCheckerApp(),
    );
  }
}

class AgeCheckerApp extends StatefulWidget {
  @override
  _AgeCheckerAppState createState() => _AgeCheckerAppState();
}

class _AgeCheckerAppState extends State<AgeCheckerApp> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  String _result = '';

  void _checkAge() {
    String name = _nameController.text.trim();
    int? age = int.tryParse(_ageController.text.trim());

    if (name.isEmpty || age == null) {
      setState(() {
        _result = "Vui lòng nhập tên và tuổi hợp lệ.";
      });
      return;
    }

    String category;

    if (age <= 2) {
      category = "em bé";
    } else if (age <= 6) {
      category = "trẻ em";
    } else if (age <= 65) {
      category = "người lớn";
    } else {
      category = "người già";
    }

    setState(() {
      _result = "$name là $category.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text("Bài tập về nhà 02",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("Họ và tên:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(

                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("Tuổi:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _ageController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),


            Center(
              child: ElevatedButton(
                onPressed: _checkAge,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3C7DC8),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Kiểm tra",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            
            Text(
              _result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
