import 'package:qtec_player/presentation/widgets/loader/thumbnail_loader.dart';
import 'package:qtec_player/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoItemView extends HookWidget{
  final String? thumbnailUri;
  final String? videoTitle;
  final String? channelImageUri;
  final String? totalVideoView;
  final String? videoDuration;
  final DateTime? publishedDate;

  const VideoItemView({
    super.key,
    required this.thumbnailUri,
    required this.videoTitle,
    required this.channelImageUri,
    required this.totalVideoView,
    required this.videoDuration,
    required this.publishedDate
  });

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      width: 1.sw,
      //height: 350.h,
      child: Column(
        children: [

          Stack(
            children: [
              FadeInImage.assetNetwork(
                width: 1.sw,
                height: 230.h,
                image: thumbnailUri ?? "",
                fit: BoxFit.cover,
                placeholder: "",
                placeholderFit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 500),
                fadeOutDuration: const Duration(milliseconds: 1000),
                placeholderErrorBuilder: (context,_,stackTrace) => const ThumbnailLoader(),
                imageErrorBuilder: (context,_, stackTrace) => const ThumbnailLoader()
              ),


              Positioned(
                bottom: 10,
                right: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: radius4,
                    color: ColorPalate.defaultBlack.withOpacity(0.5)
                  ),
                  child: Text(
                    videoDuration ?? "0:00",
                    style: CustomTextStyles.viewsAndPublishedStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorPalate.defaultWhite
                    ),
                  ),
                ),
              )

            ],
          ),


          Padding(
            padding: padding12,
            child: Row(
              crossAxisAlignment: crossStart,
              mainAxisAlignment: mainStart,
              children: [

                ClipRRect(
                  borderRadius: radiusCircle,
                  child: FadeInImage.assetNetwork(
                    width: 45.w,
                    height: 45.w,
                    image: channelImageUri ?? "",
                    fit: BoxFit.cover,
                    placeholder: "",
                    placeholderFit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 500),
                    fadeOutDuration: const Duration(milliseconds: 1000),
                    placeholderErrorBuilder: (context,_,stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 45.sp,),
                    imageErrorBuilder: (context,_, stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 45.sp,),
                  ),
                ),

                gap12,

                Expanded(
                  child: Column(
                    mainAxisAlignment: mainStart,
                    crossAxisAlignment: crossStart,
                    children: [

                      Text(
                        videoTitle ?? "",
                        style: CustomTextStyles.titleTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Row(
                        children: [

                          Text(
                            "${totalVideoView ?? ""} views",
                            style: CustomTextStyles.viewsAndPublishedStyle,
                          ),


                          gap12,

                          Text(
                            publishedDate != null ?  timeago.format(publishedDate!.subtract(const Duration(minutes: 1))):"",
                            style: CustomTextStyles.viewsAndPublishedStyle,
                          ),
                        ],
                      ),



                    ],
                  ),
                ),


                Icon(
                  Icons.more_vert_rounded,
                  color: ColorPalate.defaultBlueGrey,
                  size: 25.sp,
                ),


              ],
            ),
          ),

        ],
      ),
    );

  }
}
