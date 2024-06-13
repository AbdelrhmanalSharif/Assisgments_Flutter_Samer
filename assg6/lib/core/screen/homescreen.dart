import 'package:assg6/core/feature/buttom_color.dart';
import 'package:assg6/core/feature/button_side.dart';
import 'package:assg6/core/theme/color.dart';
import 'package:assg6/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          centerTitle: true,
          title: Text(
            'Beach Crochet Lace',
            style: fontTextPoppins,
          ),
        ),
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: starColor),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(
                        color: textDarkColor,
                        fontFamily: 'Popins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '(2.6k+ reviews)',
                      style: TextStyle(
                        color: textLightColor,
                        fontFamily: 'Popins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: textLightColor,
                        decorationThickness: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: const Image(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST3nYKh9noCROhfd7a3mkIQ9X03kmSLK3_Xw&usqp=CAU',
                    ),
                    height: 300,
                    width: 300,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Selected Size',
                    style: fontTextLato.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtomSizes(letter: 'S'),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtomSizes(letter: 'M'),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtomSizes(letter: 'L'),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtomSizes(letter: 'XL'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Selected Color',
                    style: fontTextLato.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtomColor(),
                    SizedBox(
                      width: 10,
                    ),
                    ButtomColor(),
                    SizedBox(
                      width: 10,
                    ),
                    ButtomColor(),
                    SizedBox(
                      width: 10,
                    ),
                    ButtomColor(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 150),
                          child: Icon(
                            Icons.euro,
                            color: starColor,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '39.99',
                            style: fontTextWorkSans.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const SizedBox(
                              height: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.sentiment_dissatisfied,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'No money',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: fontTextUbuntu.copyWith(
                          color: bgColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
