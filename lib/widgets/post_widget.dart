import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shimmer/shimmer.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
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
                const Icon(Icons.menu)
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
                icon: const Icon(Iconsax.heart, color: Colors.black),
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                icon: const Icon(Iconsax.message_2, color: Colors.black),
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                icon: const Icon(Iconsax.send_2, color: Colors.black),
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
                  preDataTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GetShimmeredPost extends StatelessWidget {
  const GetShimmeredPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[500]!,
        highlightColor: Colors.grey[200]!,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("aaaaaaaaaaaaaaaaaaa.aaaaaar",
                          style: TextStyle(color: Colors.white)),
                      Text("Londra", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.menu, color: Colors.white)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Container(
                height: 400,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Iconsax.heart, color: Colors.white),
                  onPressed: () {
                    // handle the press
                  },
                ),
                IconButton(
                  icon: const Icon(Iconsax.message_2, color: Colors.white),
                  onPressed: () {
                    // handle the press
                  },
                ),
                IconButton(
                  icon: const Icon(Iconsax.send_2, color: Colors.white),
                  onPressed: () {
                    // handle the press
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark_border_sharp,
                      color: Colors.white),
                  onPressed: () {
                    // handle the press
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
