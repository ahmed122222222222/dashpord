import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:resposive/view/widget/three/mycard.dart';

// ignore: camel_case_types
class mycardPageview extends StatelessWidget {
  const mycardPageview({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => const mycard()),
    );
  }
}
