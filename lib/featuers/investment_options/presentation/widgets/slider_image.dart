import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderImage extends StatefulWidget {
  const SliderImage({super.key});

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  int activePage = 0;

  List<String> images = [
    'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
    'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
    'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 800.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = images[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                  height: 400,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  // autoPlay: true,
                  // autoPlayInterval: Duration(seconds: 2),
                  onPageChanged: (index, reason) {
                    setState(() {
                      activePage = index;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildIndicator(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        effect: SlideEffect(
            dotHeight: 12,
            dotWidth: 12,
            spacing: 8.0,
            radius: 16.0,
            dotColor: Colors.grey,
            activeDotColor: Colors.indigo),
        activeIndex: activePage,
        count: images.length);
  }
}

Widget buildImage(String urlImage, int index) {
  return Container(
    width: 2000,
    // margin: EdgeInsets.symmetric(horizontal: 5),
    child: Image.network(
      urlImage,
      fit: BoxFit.fill,
    ),
  );
}
