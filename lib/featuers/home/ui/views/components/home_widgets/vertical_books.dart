import 'package:bookly_app/featuers/home/ui/views/components/home_widgets/vertical_container.dart';
import 'package:flutter/material.dart';

class VerticalBooks extends StatelessWidget {
  const VerticalBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return VerticalContainer();
        },
      ),
    );
  }
}