import 'package:qtec_player/presentation/widgets/widget.dart';
import 'package:qtec_player/utils/utils.dart';

class HomePageLoader extends HookWidget {
  const HomePageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (BuildContext context, index)=>
            SizedBox(
              width: 1.sw,
              height: 350.h,
              child: Column(
                children: [

                  const ThumbnailLoader(),


                  Padding(
                    padding: padding12,
                    child: Row(
                      crossAxisAlignment: crossStart,
                      mainAxisAlignment: mainStart,
                      children: [
                        Container(
                          width: 45.w,
                          height: 45.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorPalate.defaultBlueGrey,
                          ),
                        ).animate(onPlay: (controller) => controller.repeat())
                        .shimmer(
                        color: ColorPalate.blackColor.withOpacity(0.4),
                        // delay: Duration(microseconds: 400),
                        duration: const Duration(seconds: 1)),

                        gap6,

                        Expanded(
                          child: Column(
                            mainAxisAlignment: mainCenter,
                            crossAxisAlignment: crossStart,
                            children: [

                              Container(
                                width: 1.sw,
                                height: 25.h,
                                decoration: BoxDecoration(
                                  borderRadius: radius8,
                                  color: ColorPalate.defaultBlueGrey
                                ),
                              ).animate(onPlay: (controller) => controller.repeat())
                                  .shimmer(
                                  color: ColorPalate.blackColor.withOpacity(0.4),
                                  // delay: Duration(microseconds: 400),
                                  duration: const Duration(seconds: 1)),


                              gap6,

                              Container(
                                width: 250.w,
                                height: 25.h,
                                decoration: BoxDecoration(
                                    borderRadius: radius8,
                                    color: ColorPalate.defaultBlueGrey
                                ),
                              ).animate(onPlay: (controller) => controller.repeat())
                                  .shimmer(
                                  color: ColorPalate.blackColor.withOpacity(0.4),
                                  // delay: Duration(microseconds: 400),
                                  duration: const Duration(seconds: 1)),

                              gap6,

                              Row(
                                children: [
                                  Container(
                                    width: 100.w,
                                    height: 15.h,
                                    decoration: BoxDecoration(
                                        borderRadius: radius8,
                                        color: ColorPalate.defaultBlueGrey
                                    ),
                                  ).animate(onPlay: (controller) => controller.repeat())
                                      .shimmer(
                                      color: ColorPalate.blackColor.withOpacity(0.4),
                                      // delay: Duration(microseconds: 400),
                                      duration: const Duration(seconds: 1)),


                                  gap6,

                                  Container(
                                    width: 100.w,
                                    height: 15.h,
                                    decoration: BoxDecoration(
                                        borderRadius: radius8,
                                        color: ColorPalate.defaultBlueGrey
                                    ),
                                  ).animate(onPlay: (controller) => controller.repeat())
                                      .shimmer(
                                      color: ColorPalate.blackColor.withOpacity(0.4),
                                      // delay: Duration(microseconds: 400),
                                      duration: const Duration(seconds: 1)),


                                ],
                              ),



                            ],
                          ),
                        ),


                        Icon(
                            Icons.more_vert_rounded,
                            color: ColorPalate.defaultBlueGrey,
                            size: 25.sp,
                        ).animate(onPlay: (controller) => controller.repeat())
                            .shimmer(
                            color: ColorPalate.blackColor.withOpacity(0.4),
                            // delay: Duration(microseconds: 400),
                            duration: const Duration(seconds: 1)),


                      ],
                    ),
                  ),

                ],
              ),
            )
    );
  }
}
