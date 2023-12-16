import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/route_details_page/providers/route_details_provider.dart';

class DescriptionTap extends ConsumerWidget {
  const DescriptionTap({
    super.key,
    required this.description,
  });
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(routeDetailsProvider);
    final notifier = ref.watch(routeDetailsProvider.notifier);
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            description,
            style: AppStyles.body1.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: size.height(context, .05)),
          Row(
            children: [
              InkWell(
                onTap: notifier.playAudio,
                child: Container(
                  height: size.height(context, .1),
                  width: size.width(context, .3),
                  alignment: Alignment.center,
                  padding: size.all(context, .01),
                  decoration: BoxDecoration(
                    borderRadius: size.borderRadius(context, .06),
                    color: AppColors.primary,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        state.isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                      ),
                      Text(
                        state.isPlaying ? 'Detener audio' : 'Reproducir audio',
                        textAlign: TextAlign.center,
                        style: AppStyles.body1.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  height: size.height(context, .1),
                  width: size.width(context, .5),
                  alignment: Alignment.center,
                  padding: size.all(context, .01),
                  decoration: BoxDecoration(
                    borderRadius: size.borderRadius(context, .06),
                    color: AppColors.primary,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.map,
                        color: Colors.white,
                      ),
                      Text(
                        'Iniciar Ruta',
                        textAlign: TextAlign.center,
                        style: AppStyles.body1.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
