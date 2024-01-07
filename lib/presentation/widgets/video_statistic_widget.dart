
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

        Column(
          crossAxisAlignment: crossCenter,
          mainAxisAlignment: mainCenter,
          children: [

            ClipRRect(
              borderRadius: radiusCircle,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                    onPressed: (){},
                    splashColor: ColorPalate.redColor,
                    icon: Icon(Icons.favorite_border,color: ColorPalate.greyColor,size: 24.sp)
                ),
              ),
            ),

            Text("${TextConstants.MASH_ALLAH} 12k+",style: CustomTextStyles.statisticsTextStyle,)

          ],
        ),



        Column(
          crossAxisAlignment: crossCenter,
          mainAxisAlignment: mainCenter,
          children: [

            ClipRRect(
              borderRadius: radiusCircle,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                    onPressed: (){},
                    splashColor: ColorPalate.redColor,
                    icon: Icon(Icons.thumb_up_alt_outlined,color: ColorPalate.greyColor,size: 24.sp)
                ),
              ),
            ),

            Text("${TextConstants.LIKE} 15k+",style: CustomTextStyles.statisticsTextStyle,)

          ],
        ),



        Column(
          crossAxisAlignment: crossCenter,
          mainAxisAlignment: mainCenter,
          children: [


            ClipRRect(
              borderRadius: radiusCircle,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                    onPressed: (){},
                    splashColor: ColorPalate.redColor,
                    icon: Icon(Icons.share,color: ColorPalate.greyColor,size: 24.sp)
                ),
              ),
            ),


            Text(TextConstants.SHARE,style: CustomTextStyles.statisticsTextStyle,)

          ],
        ),


        Column(
          crossAxisAlignment: crossCenter,
          mainAxisAlignment: mainCenter,
          children: [

            ClipRRect(
              borderRadius: radiusCircle,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                    onPressed: (){},
                    splashColor: ColorPalate.redColor,
                    icon: Icon(Icons.flag_outlined,color: ColorPalate.greyColor,size: 24.sp)
                ),
              ),
            ),

            Text(TextConstants.REPORT,style: CustomTextStyles.statisticsTextStyle,)

          ],
        ),




      ],
    );
  }
}
