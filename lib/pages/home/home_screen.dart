import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/pages/home/widget/activities_screen.dart';
import 'package:kasif/pages/home/widget/hotel_screen.dart';
import 'package:kasif/pages/home/widget/master_painter.dart';
import 'package:kasif/pages/home/widget/place_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _name = ["Etkinlikler", "Gezilecek Yerler", "Otel", "Restaurant"];
  final List<Widget> _widget = [
    const ActivityScreen(),
    const PlaceScreen(),
    const HotelScreen(),
    //const Restaurant_Screen(),
  ];
  int selecteditem = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondrycolor,
      body: CustomPaint(
        painter: MasterPainter(),
        child: Padding(
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Merhaba",
                style: GoogleFonts.poppins(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
              ),
              Text(
                "Gizem",
                style: GoogleFonts.poppins(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 420,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: _name.length,
                  itemBuilder: (context, index) {
                    var data = _name[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selecteditem = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(microseconds: 950),
                          child: Column(
                            children: [
                              Text(data,
                                  style: GoogleFonts.lato(
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: index == selecteditem
                                        ? yellowcolor
                                        : Colors.white,
                                  )),
                              selecteditem == index
                                  ? TweenAnimationBuilder<double>(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      tween: Tween<double>(begin: 0, end: 50),
                                      builder: (context, value, child) {
                                        return Container(
                                          height: 2,
                                          width: value,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.yellow),
                                        );
                                      },
                                    )
                                  : const SizedBox.shrink()
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: 420,
                child: PageView(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      width: 420,
                      child: _widget[selecteditem],
                    )
                  ],
                ),
              ) 
            ],
          ),
        ),
      ),
    );
  }
}