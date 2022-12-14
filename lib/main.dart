import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:ui';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int activeIndex = 0;
  final urlImages = ['assets/img1.jpg', 'assets/img2.jpg', 'assets/img3.jpg'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0, //set your height
          flexibleSpace: SafeArea(
            maintainBottomViewPadding: true,
            child: Container(
              color: Color.fromARGB(255, 156, 210, 248), // set your color
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Text(
                          "Grameen Neeti",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(width: 30.0),
                        IconButton(
                          icon: Icon(Icons.mic),
                          onPressed: () {},
                        ),
                        SizedBox(width: 6.0),
                        IconButton(
                          icon: Icon(Icons.notifications_active_outlined),
                          onPressed: () {},
                        ),
                        SizedBox(width: 6.0),
                        IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {},
                        ),
                        SizedBox(width: 6.0),
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            print('pressed ');
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // set an icon or image
                        IconButton(icon: Icon(Icons.home), onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.person_pin), onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.file_copy_outlined),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.check_circle_outline),
                            onPressed: () {}),
                      ]), // set your search bar setting
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: Color.fromRGBO(199, 228, 238, 500),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  Center(
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        reverse: true,
                      ),
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = urlImages[index];
                        return buildImage(urlImage, index);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    //elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'UPCOMING EVENTS',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 85,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Pradhan Mantri Adarsh Gram Yojna',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 85,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                'Pradhan Mantri Ujjwala Yojana',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 85,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Pradhan Mantri Jan Dhan Yojana',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      height: 85,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Pradhan Mantri Suraksha Bima Yojana',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 85,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'Pradhan Mantri Vaya Vandana Yojana',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.mark_unread_chat_alt),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        color: Colors.white,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect: JumpingDotEffect(
        dotWidth: 3,
        dotHeight: 3,
      ));
}
