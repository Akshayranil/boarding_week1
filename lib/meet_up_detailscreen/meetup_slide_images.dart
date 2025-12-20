import 'package:boarding1_machinetask/utilities/screen_images.dart';
import 'package:flutter/material.dart';

class MeetupSlideImages extends StatelessWidget {
   MeetupSlideImages({super.key});
  final PageController _pageController = PageController();
  final ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 316,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            /// PAGE VIEW
            PageView.builder(
              controller: _pageController,
              itemCount: imageList.length,
              onPageChanged: (index) {
                currentIndex.value = index;
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  imageList[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
            ),

            /// DOTS OVERLAY (BOTTOM CENTER)
            Positioned(
              bottom: 12,
              left: 0,
              right: 0,
              child: ValueListenableBuilder(
                valueListenable: currentIndex,
                builder: (context, value, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      imageList.length,
                      (dotIndex) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: value == dotIndex ? 10 : 6,
                        height: value == dotIndex ? 10 : 6,
                        decoration: BoxDecoration(
                          color: value == dotIndex
                              ? Colors.white
                              : Colors.white54,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
