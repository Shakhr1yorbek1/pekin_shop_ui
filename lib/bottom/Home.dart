import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pekin_shop_ui/aylanalar%20uchun%20page/Bahorgi_kiyimlar.dart';
import 'package:pekin_shop_ui/aylanalar%20uchun%20page/Kuzgi_/Kuzgi_kiyimlar.dart';
import 'package:pekin_shop_ui/aylanalar%20uchun%20page/Qishki_kiyimlar.dart';
import 'package:pekin_shop_ui/aylanalar%20uchun%20page/Yozgi_kiyimlar.dart';

import 'Setting_page.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .3,
        centerTitle: true,
        title: const Text(
          "O'zbekiston,Toshkent",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
           children: [
              //tepa
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Select Category",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                Text(
                  "view all",
                  style: TextStyle(color: Colors.orange, fontSize: 15),
                ),
              ],
            ),
             const SizedBox(
              height: 15,
            ),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Qishki()));
                    } ,
                   child: Column(
                     children: const [
                       CircleAvatar(
                         radius: 35,
                         foregroundImage: AssetImage("assets/images/images.webp"),
                       ),
                       SizedBox(
                         height: 5,
                       ),
                       Text("Qishki kiyimalar")
                     ],
                   ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage: AssetImage("assets/images/images.webp"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Bahorgi kiyimlar")
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Bahorgi()));

                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage: AssetImage("assets/images/images.webp"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Yozgi kiyimlar")
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Yozgi()));

                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage: AssetImage("assets/images/images.webp"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Kuzgi kiyimlar")
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Kuzgi()));


                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                  child: Column(
                  children: const [
    CircleAvatar(
    radius: 35,
    foregroundImage: AssetImage("assets/images/images.webp"),
    ),
    SizedBox(
    height: 5,
    ),
    Text("Phone")
    ],
    ),
    onTap: () {

    },
    ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage: AssetImage("assets/images/images.webp"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Phone")
                      ],
                    ),
                    onTap: () {

                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage: AssetImage("assets/images/images.webp"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Phone")
                      ],
                    ),
                    onTap: () {

                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage: AssetImage("assets/images/images.webp"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Phone")
                      ],
                    ),
                    onTap: () {

                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  GestureDetector(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage: AssetImage("assets/images/images.webp"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Phone")
                      ],
                    ),
                    onTap: () {

                    },
                  ),
                ],
              ),
            ),
             //aylana
             const SizedBox(
              height: 30,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.orange,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo_outlined),
                  ),
                ),
              ],
            ),
             //qidiruv
             const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Hot salary",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                Text(
                  "see more",
                  style: TextStyle(color: Colors.orange, fontSize: 15),
                ),
              ],
            ),
             //Container
             const SizedBox(
              height: 10,
            ),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  Container(
                    width: 390,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Swiper(
                      itemBuilder: (BuildContext context,int index){
                        return const Image(
                          image: AssetImage("assets/images/images.webp"),
                          fit: BoxFit.fill,

                        );
                      },
                      itemCount: 3,
                      pagination:const SwiperPagination(),
                      control: const SwiperControl(),
                    ),
                  ),

                ],
              ),
            ),
             //hot salary
             const SizedBox(
              height: 10,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Hot salary",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                Text(
                  "see more",
                  style: TextStyle(color: Colors.orange, fontSize: 15),
                ),
              ],
            ),
             Row(
               children: [
                 Container(
                   width: 180,
                   height: 220,
                   color: Colors.black,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                     Container(
                       width: double.infinity,
                       height: 50,
                       color: Colors.blue,
                     )
                     ],
                   ),
                 ),
                 const SizedBox(width: 20,),
                 Container(
                   width: 180,
                   height: 220,
                   color: Colors.black,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                     Container(
                       width: double.infinity,
                       height: 50,
                       color: Colors.blue,
                     )
                     ],
                   ),
                 ),
               ],
             ),

          ],
        ),
      ),
    );
  }
}
