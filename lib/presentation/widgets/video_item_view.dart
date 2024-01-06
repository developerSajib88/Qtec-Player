import 'package:qtec_player/utils/utils.dart';

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

    print({
      "=============$thumbnailUri"
          "=========$videoTitle"
    });

    return Container(
      width: 1.sw,
      height: 290.h,
      alignment: Alignment.center,
      child: Column(
        children: [
          
         FadeInImage.assetNetwork(
              width: 1.sw,
              height: 190.h,
              image: thumbnailUri ?? "",
              fit: BoxFit.cover,
              placeholder: "",
              placeholderFit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 500),
              fadeOutDuration: const Duration(milliseconds: 1000),
              placeholderErrorBuilder: (context,_,stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 50.sp,),
              imageErrorBuilder: (context,_, stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 50.sp,),
         ),

          
         Text(videoTitle ?? "",style: CustomTextStyles.titleTextStyle,) 





        ],
      ),
    );
  }
}
