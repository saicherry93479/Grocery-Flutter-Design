import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocerry/ItemScreen.dart';
import 'package:grocerry/utils.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ));

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      // bottomNavigationBar: ,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: PrimaryColor,
        leading: Icon(Icons.menu),
        actions: [
          SvgPicture.asset(
            'assets/icons/cartIcon.svg',
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profileTwo.jpg'),
            ),
          )
        ],
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  // height: 200,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "OFFER",
                        style: TextStyle(
                            letterSpacing: 4, color: MainColor, fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flat 35% OFFER",
                        style: TextStyle(
                            letterSpacing: 4,
                            color: Colors.white,
                            fontSize: 25,
                            // fontFamily: 'Comfortaa-',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "in honor of World Helath Day\nwe had likely to give this \namazing offer",
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Color.fromARGB(255, 177, 176, 176),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          width: 160,
                          child: Center(child: Text('View Offers')),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          decoration: BoxDecoration(
                              color: MainColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13))),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: SecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                // Positioned(
                //     child: Image(
                //   image: AssetImage('assets/images/basket.png'),
                // ))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Fruits",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Comfortaa'),
                ),
                Text(
                  'view all',
                  style: TextStyle(color: MainColor),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: itemList.map((e) => ItemC(context, e)).toList()),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              // height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: tColor,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/Shop Icon.svg',
                          color: MainColor,
                        )),
                    IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/Search Icon.svg',
                        height: 20,
                        width: 20,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/Mail.svg',
                        height: 18,
                        width: 18,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/Settings.svg',
                        height: 20,
                        width: 20,
                        color: Colors.grey,
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector ItemC(BuildContext context, Item e) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ItemScreen(e: e),
        ));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 120,
            child: Image(
              image: AssetImage(e.image),
            ),
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: e.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(300),
                topRight: Radius.circular(300),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'FRUIT',
                    style: TextStyle(
                        color: MainColor, letterSpacing: 5, fontSize: 10),
                  ),
                  Text(
                    e.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "⭐ (${e.reviewCount} reviews)",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Text(
                      '\$${e.price} ',
                      style: TextStyle(
                          fontSize: 16, color: MainColor.withOpacity(0.75)),
                    ),
                    Text(
                      'per Kg',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ])
                ]),
            height: 120,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: tColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
