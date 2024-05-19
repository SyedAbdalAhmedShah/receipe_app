import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:receipe_app/widgets/loading_widget.dart';

class AppCacheImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  const AppCacheImage(
      {required this.height,
      required this.width,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
          ),
        ),
      ),
      placeholder: (context, url) => const AppLoading(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
