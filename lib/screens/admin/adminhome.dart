import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../widgets/txt.dart';

class Admin_home extends StatefulWidget {
  const Admin_home({Key? key}) : super(key: key);

  @override
  State<Admin_home> createState() => _Admin_homeState();
}

class _Admin_homeState extends State<Admin_home> {
  final List<String> imagecarousel = [

    'images/imagecarousel1.jpeg',
    'images/imagecarousel2.jpeg',
    'images/imagecarousel3.jpeg',
    'images/imagecarousel4.jpeg',
    'images/imagecarousel5.jpeg',
    'images/imagecarousel6.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('admin'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 150,
            child: CarouselSlider(
              items: imagecarousel
                  .map((e) => Container(
                        width: double.infinity,
                        height: 150,
                        child: Image(
                          image: AssetImage('$e'),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 400,
              ),
            ),
          ),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: GridView.count(
          //       childAspectRatio: 1 / 1.1,
          //       mainAxisSpacing: 10,
          //       crossAxisSpacing: 10,
          //       crossAxisCount: 2,
          //       children: [
          //         GestureDetector(
          //           onTap: (){},
          //           child: Container(
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(20),
          //                 color: Colors.red),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Icon(
          //                   Icons.person,
          //                   color: Colors.white,
          //                   size: 50,
          //                 ),
          //                 Txt(txt: "add user",txtcolor: Colors.white,txtsize: 20,)
          //               ],
          //             ),
          //           ),
          //         ),
          //
          //       ],
          //     ),
          //   ),
          // )
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 50,
                        ),
                        Txt(
                          txt: "add user",
                          txtcolor: Colors.white,
                          txtsize: 20,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
