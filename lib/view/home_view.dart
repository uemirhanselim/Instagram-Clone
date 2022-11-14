import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: InkWell(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Instagram",
                style: GoogleFonts.satisfy(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.keyboard_arrow_down_rounded,
                  color: Colors.black),
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
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          "https://www.denofgeek.com/wp-content/uploads/2022/04/Better-Call-Saul-Season-6-Release-Date.jpg?fit=1920%2C1080,",
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("turkish"),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              child: Icon(Icons.search_off),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("aaaaaaaaaaaaaaaaaaa.aaaaaar"),
                                Text("Londra"),
                              ],
                            ),
                            const Spacer(),
                            const Icon(Iconsax.menu_1)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: SizedBox(
                          height: 400,
                          child: Image.network(
                              "https://static.onecms.io/wp-content/uploads/sites/6/2022/04/15/Better-Call-Saul-S6.jpg",
                              fit: BoxFit.cover),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon:
                                const Icon(Iconsax.heart, color: Colors.black),
                            onPressed: () {
                              // handle the press
                            },
                          ),
                          IconButton(
                            icon: const Icon(Iconsax.message_2,
                                color: Colors.black),
                            onPressed: () {
                              // handle the press
                            },
                          ),
                          IconButton(
                            icon:
                                const Icon(Iconsax.send_2, color: Colors.black),
                            onPressed: () {
                              // handle the press
                            },
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.bookmark_border_sharp,
                                color: Colors.black),
                            onPressed: () {
                              // handle the press
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "200 likes",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ReadMoreText(
                              "show or hide widgets in Flutter using Visibility Widget in your flutter applications.show or hide widgets in Flutter using Visibility Widget in your flutter applications",
                              preDataText: "aaaaaaaaa.aaaaaaaaaar ",
                              preDataTextStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              trimLines: 2,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              moreStyle: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
