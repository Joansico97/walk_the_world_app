import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:walk_the_world_app/core/extensions/extensions.dart';

import 'package:walk_the_world_app/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final searchController = TextEditingController();

    return Scaffold(
      body: SizedBox(
        height: context.fullHeight,
        width: context.fullWidth,
        child: Stack(
          children: [
            SizedBox(
              height: context.fullHeight,
              width: context.fullWidth,
              child: Image.asset(
                Assets.images.home.path,
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
              child: SizedBox(
                height: context.fullHeight,
                width: context.fullWidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.sp(12),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: context.fullWidth,
                        margin: EdgeInsets.only(
                          top: context.sp(20),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.sp(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    Assets.images.appIcon.path,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Walk',
                                    style: context.styles.title.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'the World',
                                    style: context.styles.title.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: context.sp(12)),
                      Container(
                        height: context.sp(50),
                        width: context.fullWidth,
                        padding: EdgeInsets.symmetric(
                          horizontal: context.sp(12),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(
                            context.sp(10),
                          ),
                        ),
                        child: TextFormField(
                          controller: searchController,
                          style: context.styles.body,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: theme.colorScheme.primary,
                            ),
                            suffixIcon: searchController.text.isNotEmpty
                                ? IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      PhosphorIconsBold.x,
                                      color: theme.colorScheme.primary,
                                      size: 20,
                                    ),
                                  )
                                : null,
                            hintText: 'Elige tu ciudad',
                            hintStyle: context.styles.body,
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(height: context.sp(12)),
                      // searchController.text.isNotEmpty
                      //     ? SizedBox(
                      //         height: context.sp(100),
                      //         child: ListView.builder(
                      //           itemCount: 5,
                      //           itemBuilder: (context, index) => ListTile(
                      //             onTap: () => context.pushNamed(
                      //               RoutesNames.onBoarding,
                      //             ).whenComplete(() => searchController.clear()),
                      //             title: Text(
                      //               'citiesState.searchedCities[index].name!',
                      //               textAlign: TextAlign.center,
                      //               style: context.styles.body,
                      //             ),
                      //           ),
                      //         ),
                      //       )
                      //     : SizedBox(
                      //         width: context.fullWidth,
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             const Spacer(),
                      //             HomeButton(
                      //               label: 'Todas las rutas',
                      //               onTap: () => router.pushNamed(RoutesNames.city),
                      //               icon: PhosphorIconsBold.footprints,
                      //             ),
                      //             SizedBox(width: size.width(context, .15)),
                      //             HomeButton(
                      //               label: 'Cerca de ti',
                      //               onTap: () async => notifier.onLogout(),
                      //               icon: PhosphorIconsBold.navigationArrow,
                      //             ),
                      //             const Spacer(),
                      //           ],
                      //         ),
                      //       ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
