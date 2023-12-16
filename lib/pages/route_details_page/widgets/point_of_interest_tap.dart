import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/point.dart';

class PointsOfInterestTap extends StatelessWidget {
  const PointsOfInterestTap({
    super.key,
    required this.points,
  });

  final List<PointModel> points;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...points
              .map(
                (e) => Text(
                  '\u2022 ${e.name!}',
                  style: AppStyles.body1.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
              .toList(),
          SizedBox(height: size.height(context, .02)),
          SizedBox(
            height: size.height(context, .18),
            width: size.fullWidth(context),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: points.length,
              itemBuilder: (context, index) => Container(
                margin: size.right(context, .02),
                child: ClipRRect(
                  borderRadius: size.borderRadius(context, .02),
                  child: SizedBox(
                    height: size.height(context, .18),
                    width: size.width(context, .5),
                    child: Image.network(
                      points[index].img!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: size.height(context, .05)),
        ],
      ),
    );
  }
}
