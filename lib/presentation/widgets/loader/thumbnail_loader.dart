import 'package:qtec_player/utils/utils.dart';

class ThumbnailLoader extends HookWidget {
  const ThumbnailLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 230.h,
      decoration: BoxDecoration(
          color: ColorPalate.defaultBlueGrey
      ),
    ).animate(onPlay: (controller) => controller.repeat())
        .shimmer(
        color: ColorPalate.blackColor.withOpacity(0.4),
        // delay: Duration(microseconds: 400),
        duration: const Duration(seconds: 1));
  }
}
