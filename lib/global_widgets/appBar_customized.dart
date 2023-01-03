import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../utils/app_images.dart';

class AppBarCustomized {
  static AppBar appBar() {
    return AppBar(
      elevation: 0,
      leading: const Icon(Icons.menu),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide.none),
          color: Color.fromRGBO(55, 156, 210, 1),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppImages.logoGenone,
                height: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // static bootomSheet() {
  //   return Container(
  //     height: 100,
  //     decoration: const BoxDecoration(
  //       color: Color.fromRGBO(55, 156, 210, 1),
  //     ),
  //   );
  // }
}
