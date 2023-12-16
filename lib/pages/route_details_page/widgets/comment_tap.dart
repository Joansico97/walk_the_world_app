import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';

class CommentTap extends StatelessWidget {
  const CommentTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            hintText: 'Escribe un comentario',
            hintStyle: AppStyles.body1.copyWith(
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
          ),
        ),
        SizedBox(height: size.height(context, .02)),
        Row(
          children: [
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                padding: size.symmetric(context, .05, .03),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: size.borderRadius(context, .02),
                  color: AppColors.primary,
                ),
                child: Text(
                  'Comentar',
                  style: AppStyles.body1.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
