
import 'package:qtec_player/presentation/widgets/statistic_button.dart';
import 'package:qtec_player/utils/utils.dart';

class VideoStatisticWidget extends HookConsumerWidget {
  final int videoID;
  final String mashAllah;
  final String like;
  const VideoStatisticWidget({
    super.key,
    required this.videoID,
    required this.mashAllah,
    required this.like
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        StatisticButton(
          text: "${TextConstants.MASH_ALLAH} 12k+",
          icon: Icon(Icons.favorite_border,color: ColorPalate.greyColor,size: 24.sp),
          onPressed: () {  },
        ),

        StatisticButton(
          text: "${TextConstants.LIKE} 15k+",
          icon: Icon(Icons.thumb_up_alt_outlined,color: ColorPalate.greyColor,size: 24.sp),
          onPressed: () {  },
        ),


        StatisticButton(
          text: TextConstants.SHARE,
          icon: Icon(Icons.share,color: ColorPalate.greyColor,size: 24.sp),
          onPressed: () {  },
        ),

        StatisticButton(
          text: TextConstants.REPORT,
          icon: Icon(Icons.flag_outlined,color: ColorPalate.greyColor,size: 24.sp),
          onPressed: () {  },
        ),

      ],
    );
  }
}
