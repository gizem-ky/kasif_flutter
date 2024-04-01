// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, use_super_parameters, must_be_immutable


import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kasif/core/animation/fade_animation.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/data/data.dart';
import 'package:kasif/core/model/activities_model.dart';
import 'package:kasif/pages/discover/discover_activity.dart';
import 'package:slider_button/slider_button.dart';


class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  late ActivityModel current_place;
  int seletedindex = 0;

  @override
  void initState() {
    current_place = activity_items[0];
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
          child: FadeAnimation(
            begin: 0.01,
            end: 1,
            duration: const Duration(seconds: 1),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Swiper(
                  itemWidth: screenSize.width / 1.1,
                  itemHeight: screenSize.width / 1,
                  itemCount: activity_items.length,
                  scrollDirection: Axis.horizontal,
                  autoplay: true,
                  viewportFraction: 0.8,
                  scale: 0.9,
                  onIndexChanged: (value) {
                    setState(() {
                      current_place = activity_items[seletedindex];
                    });
                  },
                  onTap: (index) {
                    /*context.push(Routes.checkoutscreen.path,
                        extra: activity_items[index]);*/
                  },
                  itemBuilder: (context, index) {
                    seletedindex = index;
                    var data = activity_items[index];
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
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // "Activity",
              "${current_place.trip} ( ${current_place.timing} ) ",
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
                      MaterialPageRoute(builder: (context) => const DiscoverActivity()),
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
                          "Etkinlikleri Keşfet  > > >",
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
  ActivityModel model;
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
                width: 600,
                height: 800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
