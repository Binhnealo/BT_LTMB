import 'package:flutter/material.dart';
import 'TextDetail.dart';
import 'Images.dart';
import 'TextField.dart';
import 'PasswordField.dart';
import 'ColumLayout.dart';
import 'RowLayout.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Components List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const UIComponentsListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UIComponentsListScreen extends StatelessWidget {
  const UIComponentsListScreen({super.key});

  Widget buildComponentCard({
    required String title,
    required String description,
    required Color backgroundColor,
    Color titleColor = Colors.black,
    Color descriptionColor = Colors.black54,
    required VoidCallback onTap,
  }) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
    child: Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
    decoration: BoxDecoration(
    color: backgroundColor,
    borderRadius: BorderRadius.circular(8.0),
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: descriptionColor,
            ),
          ),
        ],
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Components List'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SectionHeader(title: 'Display'),
          buildComponentCard(
            title: 'Text',
            description: 'Displays text',
            backgroundColor: Colors.blue[100]!,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TextDetail()),
              );
            }
          ),
          const SizedBox(height: 12),
          buildComponentCard(
            title: 'Image',
            description: 'Displays an image',
            backgroundColor: Colors.blue[100]!,
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Images()),
              );
            }
          ),
          const SizedBox(height: 24),
          const SectionHeader(title: 'Input'),
          buildComponentCard(
            title: 'TextField',
            description: 'Input field for text',
            backgroundColor: Colors.blue[100]!,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyTextField()),
                );
              }
          ),
          const SizedBox(height: 12),
          buildComponentCard(
            title: 'PasswordField',
            description: 'Input field for passwords',
            backgroundColor: Colors.blue[100]!,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PasswordField()),
                );
              }
          ),
          const SizedBox(height: 24),

          const SectionHeader(title: 'Layout'),
          buildComponentCard(
            title: 'Column',
            description: 'Arranges elements vertically',
            backgroundColor: Colors.blue[100]!,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Colum()),
                );
              }
          ),
          const SizedBox(height: 12),
          buildComponentCard(
            title: 'Row',
            description: 'Arranges elements horizontally',
            backgroundColor: Colors.blue[100]!,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RowLayout()),
                );
              }
          ),
          const SizedBox(height: 24),
          buildComponentCard(
            title: 'Tự tìm hiểu',
            description: 'Tìm ra tất cả các thành phần UI Cơ bản',
            backgroundColor: Colors.red[100]!,
            titleColor: Colors.red[800]!,
            descriptionColor: Colors.red[600]!,
              onTap: (){}
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// SectionHeader giữ nguyên
class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
