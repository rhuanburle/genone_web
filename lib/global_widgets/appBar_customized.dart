import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../utils/app_images.dart';

class AppBarCustomized {
  static AppBar appBar() {
    return AppBar(
      elevation: 0,
      leading: const Icon(Icons.menu),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          border: const Border(bottom: BorderSide.none),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Colors.white,
              Colors.blue.shade800,
            ],
          ),
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

  static bootomSheet() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Colors.white,
            Colors.blue.shade800,
          ],
        ),
      ),
    );
  }
}
