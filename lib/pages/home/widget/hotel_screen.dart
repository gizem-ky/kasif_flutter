// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, use_super_parameters, camel_case_types, non_constant_identifier_names

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/data/data.dart';
import 'package:kasif/core/model/hotels_model.dart';
import 'package:kasif/pages/discover/discover_hotels.dart';
import 'package:slider_button/slider_button.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  late HotelModel current_place;
  int seletedindex = 0;

  @override
  void initState() {
    current_place = hotel_items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4 + 50,
          width: 400,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Swiper(
                itemWidth: screenSize.width / 1.1,
                itemHeight: screenSize.width / 1,
                itemCount: hotel_items.length,
                scrollDirection: Axis.horizontal,
                autoplay: true,
                viewportFraction: 0.8,
                scale: 0.9,
                onIndexChanged: (value) {
                  setState(() {
                    current_place = hotel_items[seletedindex];
                  });
                },
                onTap: (index) {
                  /*context.push(Routes.checkoutscreen.path,
                      extra: hotel_items[index]);*/
                },
                itemBuilder: (context, index) {
                  seletedindex = index;
                  var data = hotel_items[index];
                  return ImageCard(
                    model: data,
                  );
                },
                // layout: SwiperLayout.STACK,
                // layout: SwiperLayout.CUSTOM,
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/location.png",
              scale: 22,
              color: yellowcolor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              // "places",
              "${current_place.name} ",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 200, end: 400),
              duration: const Duration(milliseconds: 500),
              builder: (BuildContext context, double value, Widget? child) {
                return SliderButton(
                  disable: false,
                  vibrationFlag: true,
                  dismissThresholds: 0.75,
                  action: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DiscoverHotel()),
                    );
                    return null;
                  },
                  alignLabel: Alignment.center,
                  label: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0.1, end: 0.8),
                    duration: const Duration(seconds: 2),
                    builder: (BuildContext context, double value, Widget? child) {
                      return Opacity(
                        opacity: value,
                        child: Text(
                          "Otelleri Keşfet  > > >",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 18),
                        ),
                      );
                    },
                  ),
                  width: value,
                  height: 60,
                  buttonSize: 35,
                  buttonColor: yellowcolor,
                  shimmer: false,
                  icon: const Icon(Icons.one_x_mobiledata),
                  backgroundColor: Colors.transparent.withOpacity(0.4),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  HotelModel model;
  ImageCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent.withOpacity(0.3),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              width: 200,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                model.image_url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
