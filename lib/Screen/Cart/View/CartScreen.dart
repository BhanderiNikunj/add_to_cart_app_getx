import 'package:add_to_cart_app_getx/Screen/Home/Controllor/HomeControllor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  HomeControllor homeControllor = Get.put(
    HomeControllor(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Obx(
          () => GridView.builder(
            itemCount: homeControllor.AddData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 50,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          child: Image.asset(
                            "${homeControllor.AddData[index].image}",
                          ),
                        ),
                        Text(
                          "${homeControllor.AddData[index].name}",
                          style: GoogleFonts.lobster(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "Price :- ${homeControllor.AddData[index].price}",
                          style: GoogleFonts.lobster(
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        homeControllor.AddData.removeAt(index);
                      },
                      icon: Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
