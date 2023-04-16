import 'package:add_to_cart_app_getx/Screen/Home/Model/HomeModel.dart';
import 'package:get/get.dart';

class HomeControllor extends GetxController {
  RxList<HomeModel> FoofList = <HomeModel>[
    HomeModel(
      name: "Masala Dosa",
      price: "120 \$",
      image: "Assets/Images/MasalaDosa.png",
      desc: "120 \$ Unlimited Paper + Mesur + Pepsi",
    ),
    HomeModel(
      name: "Chese Dosa",
      price: "150 \$",
      image: "Assets/Images/CheseDosa.png",
      desc: "150 \$ Unlimited Paper + Mesur + Pepsi",
    ),
    HomeModel(
      name: "Onion Dosa",
      price: "150 \$",
      image: "Assets/Images/OnionDosa.png",
      desc: "150 \$ Unlimited Paper + Mesur + Pepsi",
    ),
    HomeModel(
      name: "Upma Dosa",
      price: "150 \$",
      image: "Assets/Images/UpmaDosa.png",
      desc: "150 \$ Unlimited Paper + Mesur + Pepsi",
    ),
    HomeModel(
      name: "Rava Dosa",
      price: "150 \$",
      image: "Assets/Images/RavaDosa.png",
      desc: "150 \$ Unlimited Paper + Mesur + Pepsi",
    ),
    HomeModel(
      name: "Plain Dosa",
      price: "120 \$",
      image: "Assets/Images/PlainDosa.png",
      desc: "120 \$ Unlimited Paper + Mesur + Pepsi",
    ),
    HomeModel(
      name: "Ghee Dosa",
      price: "180 \$",
      image: "Assets/Images/GheeDosa.png",
      desc: "180 \$ Unlimited Paper + Mesur + Pepsi + JiniRoll",
    ),
    HomeModel(
      name: "Paneer Dosa",
      price: "180 \$",
      image: "Assets/Images/PaneerDosa.png",
      desc: "180 \$ Unlimited Paper + Mesur + Pepsi",
    ),
  ].obs;

  RxList<HomeModel> AddData = <HomeModel>[].obs;
}
