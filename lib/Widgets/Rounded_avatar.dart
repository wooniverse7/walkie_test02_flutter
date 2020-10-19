import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:walkie_test02/constants/common_size.dart';

class RoundedAvatar extends StatelessWidget {

  final double size;

  const RoundedAvatar({
    Key key, this.size = avatar_size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(//make profil pics round
      child: CachedNetworkImage(
        //정렬 안맞춰주면 에러
        imageUrl: 'https://picsum.photos/100',
          width: size,
          height:size,
      ),
    );
  }
}