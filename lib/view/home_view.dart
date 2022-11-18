import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/widgets/user_story_widget.dart';

import '../widgets/post_widget.dart';
import '../widgets/product_app_bar_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLoaded = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoaded = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productAppBarWidget(),
      body: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 110.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    index == 0 ? const _MyStory() : const SizedBox.shrink(),
                    const UserStoryWidget(),
                  ],
                );
              },
            ),
          ),
          const Divider(thickness: 1),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 30,
            itemBuilder: (context, index) {
              return isLoaded == false
                  ? const GetShimmeredPost()
                  : const PostWidget();
            },
          )
        ],
      ),
    );
  }
}

class _MyStory extends StatelessWidget {
  const _MyStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0.h, right: 8.0.w, left: 8.0.w),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.sp),
                    border: Border.all(color: Colors.red, width: 3)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.sp),
                  child: Image.network(
                    "https://www.denofgeek.com/wp-content/uploads/2022/04/Better-Call-Saul-Season-6-Release-Date.jpg?fit=1920%2C1080,",
                    fit: BoxFit.cover,
                    height: 75.h,
                    width: 75.w,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              const Text("turkish"),
            ],
          ),
        ),
        Positioned(
            top: 64.h,
            right: 6.w,
            child: Container(
              width: 28.w,
              height: 28.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.sp),
                  color: Colors.blue,
                  border: Border.all(width: 3.w, color: Colors.white)),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            )),
      ],
    );
  }
}
