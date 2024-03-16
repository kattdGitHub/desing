import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:design/business_logics/service/all_getter_setter.dart';

import 'app_video_player.dart';

class PhotoVideoViewZoom extends StatelessWidget {
  final List<String> urls;
  final String? videoUrl;
  final int initialIndex;

  const PhotoVideoViewZoom({
    super.key,
    required this.urls,
    this.initialIndex = 0,
    this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: urls.length + (videoUrl != null ? 1 : 0),
            controller: PageController(initialPage: initialIndex),
            itemBuilder: (context, index) {
              if (index < urls.length) {
                return PhotoView(
                  imageProvider: NetworkImage(urls[index]),
                  minScale: PhotoViewComputedScale.contained * 0.8,
                  maxScale: PhotoViewComputedScale.covered * 2,
                );
              } else {
                return ProfileNetworkVideoPlayer(
                  size: 70.w,
                  networkUrl: videoUrl ?? dummyUserVideoLink,
                );
              }
            },
          ),
          Positioned(
            top: 50.h,
            left: 20.w,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 18.r,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 22.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
