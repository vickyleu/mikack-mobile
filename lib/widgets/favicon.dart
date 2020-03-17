import 'package:flutter/material.dart';
import 'package:mikack/models.dart' as models;

class Favicon extends StatelessWidget {
  Favicon(this.platform, {this.size});

  final models.Platform platform;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (platform.favicon != null && platform.favicon.isNotEmpty) {
      var iconAsset = 'images/favicon/${platform.domain}.ico';
      return Image.asset(
        iconAsset,
        width: size,
        height: size,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.none,
      );
    } else {
      return Container(
        color: Colors.grey[500],
        width: size,
        height: size,
        child: Center(
          child: Text(platform.name[0], style: TextStyle(color: Colors.white)),
        ),
      );
    }
  }
}