import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0.0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                //  color: Color(0xFF21262E),
                border: Border.all(color: Color(0xFF21262E), width: 1.0),
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF21262E),
                    Color(0xFF21262E).withOpacity(0.0),
                  ],
                ),
              ),
              child: Icon(
                Icons.grid_view_rounded,
                size: 18.0,
                color: Colors.white.withOpacity(0.18),
              ),
            ),
            Text(
              'Cart',
              style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 24, 239, 235),
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/me.jpg',
                  width: 30.0, height: 30.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF262B33),
                    Color(0xFF262B33).withOpacity(0.0),
                  ],
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/mock-coffee-01.png',
                  //image,
                  width: 126.0,
                  height: 126.0,
                  
                ),
                SizedBox(width: 12.0),
                Container(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cappuccino',
                          //name,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'With Steamed Milk',
                          style: GoogleFonts.poppins(
                            color: Color(0xFFAEAEAE),
                            fontSize: 9.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 72.0,
                              height: 35.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF0C0F14),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'M',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFD17842),
                                      ),
                                    ),
                                    Text(
                                      '6.20',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12.0,
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 28.44,
                              height: 28.44,

                              alignment: Alignment.center,
                              // ขอบ
                              decoration: BoxDecoration(
                                color: Color.fromARGB(212, 243, 123, 58),
                                borderRadius: BorderRadius.circular(8.0),
                              ),

                              child: Text(
                                '-',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 50.0,
                              height: 30.0,
                              alignment: Alignment.center,
                              // ขอบ
                              decoration: BoxDecoration(
                                color: Color.fromARGB(212, 25, 22, 17),
                                border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(212, 243, 123, 58)),
                                borderRadius: BorderRadius.circular(7.0),
                              ),

                              child: Text(
                                '1',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 28.44,
                              height: 28.44,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(212, 243, 123, 58),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                '+',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(width: 12.0, height: 12.0,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF262B33),
                    Color(0xFF262B33).withOpacity(0.0),
                  ],
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset(
                //   'assets/images/espresso.jpg',
                //   //image,               
                //   width: 126.0,
                //   height: 126.0,
                //   fit: BoxFit.cover,
                //   decoration: BoxDecoration(
                //     color: Color.fromARGB(212, 243, 123, 58),
                //     borderRadius: BorderRadius.circular(8.0),
                //   ),             
                // ),
                Container(
                  width: 126.0,
                  height: 126.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    //shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image.asset(
                    // 'https://picsum.photos/seed/picsum/200/300',
                    'assets/images/espresso.jpg',
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(width: 12.0),
                Container(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Espresso',
                          //name,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'With Steamed Milk',
                          style: GoogleFonts.poppins(
                            color: Color(0xFFAEAEAE),
                            fontSize: 9.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 72.0,
                              height: 35.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF0C0F14),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'M',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFD17842),
                                      ),
                                    ),
                                    Text(
                                      '6.20',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12.0,
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 28.44,
                              height: 28.44,

                              alignment: Alignment.center,
                              // ขอบ
                              decoration: BoxDecoration(
                                color: Color.fromARGB(212, 243, 123, 58),
                                borderRadius: BorderRadius.circular(8.0),
                              ),

                              child: Text(
                                '-',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 50.0,
                              height: 30.0,
                              alignment: Alignment.center,
                              // ขอบ
                              decoration: BoxDecoration(
                                color: Color.fromARGB(212, 25, 22, 17),
                                border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(212, 243, 123, 58)),
                                borderRadius: BorderRadius.circular(7.0),
                              ),

                              child: Text(
                                '1',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 28.44,
                              height: 28.44,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(212, 243, 123, 58),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                '+',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget? buildItem(BuildContext context, int index) {
    

  }
}
