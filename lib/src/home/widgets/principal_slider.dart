import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class PrincipalSlider extends StatelessWidget {
  const PrincipalSlider({super.key, required this.imgList});
  final List<String> imgList;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: PageView.builder(
        itemCount: imgList.length,
        pageSnapping: true,
        itemBuilder: (context, index) {
          return ImageNetwork(
            image: imgList[index],
            height: 150,
            width: MediaQuery.of(context).size.width,
            duration: 1500,
            fitAndroidIos: BoxFit.contain,
            fitWeb: BoxFitWeb.contain,
          );
        },
      ),
    );
  }
}
