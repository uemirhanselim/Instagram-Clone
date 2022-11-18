import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

PreferredSizeWidget productAppBarWidget() {
  return AppBar(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    title: InkWell(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Instagram",
            style: GoogleFonts.satisfy(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
        ],
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.add_box_outlined, color: Colors.black),
        tooltip: 'Open shopping cart',
        onPressed: () {},
      ),
      Stack(
        children: [
          SizedBox(
            height: 60,
            child: IconButton(
              icon: const Icon(Iconsax.heart, color: Colors.black),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ),
          const Positioned(
              top: 14,
              left: 28,
              child: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.red,
              ))
        ],
      ),
      IconButton(
        icon: const Icon(Iconsax.message, color: Colors.black),
        tooltip: 'Open shopping cart',
        onPressed: () {
          // handle the press
        },
      ),
    ],
  );
}
