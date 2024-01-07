import 'package:qtec_player/core/dependecny_injection/dependency_injection.dart';
import 'package:qtec_player/presentation/widgets/widget.dart';
import 'package:qtec_player/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoViewScreen extends HookConsumerWidget {

  static String get path => "video";
  static String get name => "video";

  final int videoIndex;

  const VideoViewScreen({super.key, required this.videoIndex});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final videoPlayerState = ref.watch(videoPlayerProvider);

    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: ColorPalate.defaultBlack,
        child: SafeArea(
          child: Column(
            children: [
              Hero(
                tag: videoIndex.toString(),
                child: FadeInImage.assetNetwork(
                  width: 1.sw,
                  height: 230.h,
                  image: videoPlayerState.videoRes?.results[videoIndex].thumbnail ?? "",
                  fit: BoxFit.cover,
                  placeholder: "",
                  placeholderFit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 500),
                  fadeOutDuration: const Duration(milliseconds: 1000),
                  placeholderErrorBuilder: (context,_,stackTrace) => Container(
                    width: 1.sw,
                    height: 230.h,
                    decoration: BoxDecoration(
                        borderRadius: radius4,
                        color: ColorPalate.defaultBlueGrey
                    ),
                  ).animate(onPlay: (controller) => controller.repeat())
                      .shimmer(color: ColorPalate.blackColor.withOpacity(0.4),
                      duration: const Duration(seconds: 1)),
                  imageErrorBuilder: (context,_, stackTrace) => Container(
                    width: 1.sw,
                    height: 230.h,
                    decoration: BoxDecoration(
                        borderRadius: radius4,
                        color: ColorPalate.defaultBlueGrey
                    ),
                  ).animate(onPlay: (controller) => controller.repeat())
                      .shimmer(color: ColorPalate.blackColor.withOpacity(0.4),
                      duration: const Duration(seconds: 1)),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      videoPlayerState.videoRes?.results[videoIndex].title ?? "",
                      style: CustomTextStyles.titleTextStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Row(
                      children: [

                        Text(
                          "${videoPlayerState.videoRes?.results[videoIndex].viewers ?? ""} views",
                          style: CustomTextStyles.viewsAndPublishedStyle,
                        ),


                        gap12,

                        Text(
                          videoPlayerState.videoRes?.results[videoIndex].createdAt != null ?
                          timeago.format( videoPlayerState.videoRes!.results[videoIndex].createdAt.subtract(const Duration(minutes: 1))):"",
                          style: CustomTextStyles.viewsAndPublishedStyle,
                        ),
                      ],
                    ),


                   // MASH ALLAH, LIKE, SHARE AND REPORT WIDGET
                   const VideoStatisticWidget(
                      videoID: 0,
                      mashAllah: "12k",
                      like: "15k",
                   ),


                   gap6,

                   ChannelSubscribeWidget(
                       channelImageUri: videoPlayerState.videoRes?.results[videoIndex].channelImage
                   ),

                  ],
                ),
              ),


              Divider(color: ColorPalate.greyColor),


            ],
          ),

        ),
      ),
    );
  }
}
