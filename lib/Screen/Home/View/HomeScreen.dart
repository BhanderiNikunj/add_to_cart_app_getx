import 'package:add_to_cart_app_getx/Screen/Home/Controllor/HomeControllor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeControllor homeControllor = Get.put(
    HomeControllor(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed('cart');
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: GridView.builder(
          itemCount: homeControllor.FoofList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 50,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed('detail',arguments: index);
              },
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Image.asset(
                        "${homeControllor.FoofList[index].image}",
                      ),
                    ),
                    Text(
                      "${homeControllor.FoofList[index].name}",
                      style: GoogleFonts.lobster(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Price :- ${homeControllor.FoofList[index].price}",
                      style: GoogleFonts.lobster(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
