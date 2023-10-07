import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (context, index, realIndex) => Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: AppColors.greyColor),
                    image: DecorationImage(
                        image: AssetImage('images/event2.jpg'),
                        fit: BoxFit.fitHeight),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.greyColor,
                          blurRadius: 7,
                          spreadRadius: 1,
                          offset: const Offset(7, 7)),
                    ],
                  ),
                  // child: Text('Event ${realIndex - 9999}')),
                )),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),

                  // border: Border.all(color: AppColors.greyColor),
                  image: DecorationImage(
                      image: AssetImage('images/event1.png'),
                      fit: BoxFit.fitHeight),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.greyColor,
                        blurRadius: 7,
                        spreadRadius: 1,
                        offset: const Offset(7, 7)),
                  ],
                ),
                // child: Text('Event ${realIndex - 9999}'),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      options: CarouselOptions(
        height: 440,
        autoPlay: true,
        animateToClosest: true,
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}
