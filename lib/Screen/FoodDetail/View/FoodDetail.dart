import 'package:add_to_cart_app_getx/Screen/Home/Controllor/HomeControllor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  HomeControllor homeControllor = Get.put(
    HomeControllor(),
  );

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30 * 2),
                  bottomRight: Radius.circular(30 * 2),
                ),
                border: Border.all(color: Colors.white),
                color: Colors.white30,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30 * 2),
                  bottomLeft: Radius.circular(30 * 2),
                ),
                child: Image.asset(
                  "${homeControllor.FoofList[index].image}",
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Text(
                "Name :- ${homeControllor.FoofList[index].name}",
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Text(
                "Price :- ${homeControllor.FoofList[index].price}",
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: Text(
                "Deprecation :- ${homeControllor.FoofList[index].desc}",
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    homeControllor.AddData.add(homeControllor.FoofList[index]);
                    Get.back();
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white30,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.lobster(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white30,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Buy Now",
                    style: GoogleFonts.lobster(
                      fontSize: 20,
                      color: Colors.white,
                    ),
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
