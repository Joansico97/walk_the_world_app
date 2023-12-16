import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/gen/assets.gen.dart';

class CityBubble extends StatelessWidget {
  const CityBubble({
    super.key,
    required this.onTap,
    required this.label,
    required this.image,
  });

  final VoidCallback onTap;
  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              height: size.width(context, .32),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: size.borderRadius(context, 1),
                child: FadeInImage(
                  placeholder: AssetImage(Assets.images.placeHolder.path),
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AutoSizeText(
              label,
              textAlign: TextAlign.center,
              maxLines: 2,
              maxFontSize: 20,
              style: AppStyles.heading2,
            )
          ],
        ),
      ),
    );
  }
}
