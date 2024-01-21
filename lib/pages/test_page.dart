import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}
                        // ใช้คู่กับ StatefulWidget
class _TestPageState extends State<TestPage> {
  var _text = ""; // state variable
  //var _icon = Icons.airlines;
  IconData? _icon;

  Widget buildItem(IconData icon, String label, Color color
      // {
      //   required IconData icon,
      //   required String label,
      //   Color color = Colors.black,
      // }
      ) {
    return InkWell(
      // botton
      onTap: () {
        setState(() {
          _text = label;
          _icon = icon;
        });
      },

      child: Container(
        width: 100.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Icon(icon, color: color),
            Text(
              label,
              style: GoogleFonts.notoSansThai(
                color: color,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildTextWithBackground({
    required String text,
    required Color color,
  }) {
    return Container(
      //alignment: Alignment.centerRight,
      //width: 200.0,  // ปรับความยืด
      color: color,
      padding: EdgeInsets.all(20.0),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    var itemList = [
      buildItem(Icons.phone, "โทร", Color.fromARGB(255, 47, 147, 228)),
      buildItem(Icons.route, "เส้นทาง", Color.fromARGB(255, 240, 247, 40)),
      buildItem(Icons.share, "แชร์", Color.fromARGB(255, 54, 225, 24)),
      buildItem(Icons.person, "ฉัน", Color.fromARGB(255, 228, 43, 213)),
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(  //botton clear screen
              onPressed: (){
                setState(() {
                  _text = "";
                  _icon = null;
                });
              }, 
              child: Text("Clear")),
            Expanded(
              child: Center(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(_icon, size: 100.0),
                    Text(
                      _text,
                      style: GoogleFonts.kanit(fontSize: 80.0),
                    ),
                  ],
                ),
              ),
            ),
          
          Row(
              mainAxisAlignment: MainAxisAlignment.center, // left right
              //crossAxisAlignment: CrossAxisAlignment.start, // upper lower
              children: itemList,
              //children: [
              // use Widget buildItem()
              // buildItem(icon: Icons.phone, label: "โทร", color: Color.fromARGB(255, 47, 147, 228)),

              //buildItem(Icons.phone, "โทร", Color.fromARGB(255, 47, 147, 228)),

              // buildItem(Icons.route, "เส้นทาง", Color.fromARGB(255, 240, 247, 40)),
              // buildItem(Icons.share, "แชร์", Color.fromARGB(255, 54, 225, 24)),
              // buildItem(Icons.person, "ฉัน", Color.fromARGB(255, 228, 43, 213)),
              // use Widget buildTextWithBackground()
              // buildTextWithBackground(text: "Bow", color: Colors.blue),
              // buildTextWithBackground(text: "Tang", color: Colors.yellow),
              // //Spacer(flex: 2,),  // เว้นระยะ
              // buildTextWithBackground(text: "Tiw", color:  Colors.red),
              // //Spacer(flex: 1,),
              // //buildTextWithBackground(text: "See", color: Colors.green),
              // //Spacer(flex: 1,),
              // //Expanded(child: SizedBox.shrink()), // ความว่างเปล่า
              // ElevatedButton(onPressed: () {}, child: Text("Hidden love"))
              //],
            ),
          ],
        ),
      ),
    );
  }
}
