import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Text Detail', home: TextDetail(),
    debugShowCheckedModeBanner: false,
  ));
}
class TextDetail extends StatelessWidget {
  const TextDetail({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Text Detail',
        style: TextStyle(color: Color(0xFF2196F3), fontWeight: FontWeight.bold, fontSize: 24 ),
      )
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: 250,
            height: 240,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(text: TextSpan(
                    style: TextStyle(
                      fontSize: 28,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'The ',
                      ),
                      TextSpan(
                        text: 'quick ',
                        style: TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                      TextSpan(
                        text: 'Brown ',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                        ),
                      ),
                      TextSpan(
                        text: 'fox j u m p s ',
                      ),
                      TextSpan(
                        text: 'over ',
                        style: TextStyle(

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'the',
                        style: TextStyle(

                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' lazy',
                        style: TextStyle(

                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: ' dog. ',

                      ),
                    ]
                )
                )
              ]
            ),

          )
      ),
      ),
    );
  }
}