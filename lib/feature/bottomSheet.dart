import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import 'morepages/page1.dart';
import 'morepages/page2.dart';
import 'morepages/page3.dart';
import 'morepages/page4.dart';
import 'morepages/page5.dart';

List a = [
  {'text': 'qqqq', 'icon': Icon(Icons.date_range_sharp, color: Colors.green)},
  {'text': "aaaa", 'icon': Icon(Icons.shopping_cart, color: Colors.green)},
  {'text': "eeee", 'icon': Icon(Icons.message, color: Colors.green)},
  {'text': "rrrr", 'icon': Icon(Icons.phone, color: Colors.green)},
  {'text': "tttt", 'icon': Icon(Icons.watch, color: Colors.green)},
];

List b = [
  Page1(),
  Page2(),
  Page3(),
  Page4(),
  Page5(),
];

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.8,
      width: width,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: a.length,
          itemBuilder: (context, index) {
            return
              GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => b[index]),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 0.10),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: height * 0.10,
                          width: width * 0.20,
                          color: Colors.purple.shade50,
                          child: Stack(
                            children: [
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    a[index]['icon'],
                                    SizedBox(height: height * 0.01),
                                    Text(
                                      a[index]['text'],
                                      style: GoogleFonts.urbanist(color: Colors.black54, fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
