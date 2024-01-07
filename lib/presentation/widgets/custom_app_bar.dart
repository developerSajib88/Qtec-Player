import 'package:qtec_player/utils/utils.dart';

class CustomAppBar extends HookWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 60.h,
      padding: paddingH6,
      child: Row(
        children: [

          Icon(
            Icons.play_circle_outline,
            size: 35.sp,
            color: ColorPalate.redColor,
          ),

          gap2,

          Text(
              TextConstants.TRENDING_VIDEOS,
              style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold)
          )

        ],
      ),
    );
  }
}
