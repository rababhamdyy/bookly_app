import 'package:bookly_app/core/resources/assets_images.dart';
import 'package:flutter/material.dart';

class HorizontalBooks extends StatefulWidget {
  const HorizontalBooks({super.key});

  @override
  State<HorizontalBooks> createState() => _HorizontalBooksState();
}

class _HorizontalBooksState extends State<HorizontalBooks> {
  final ScrollController _scrollController = ScrollController();
  int visibleIndex = 0;
  final double itemWidth = 150 + 8;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final index = (_scrollController.offset / itemWidth).round();
      if (index != visibleIndex) {
        setState(() {
          visibleIndex = index;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: SizedBox(
        height: 224,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            final bool isActive = index == visibleIndex;
            final double width = isActive ? 150 : 129.21;
            final double height = isActive ? 224 : 193.3;
            return Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: width,
                  height: height,
                  margin: const EdgeInsets.only(right: 8),
                  child: Image.asset(AssetsImages.testImage, fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
