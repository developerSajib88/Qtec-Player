import 'package:qtec_player/core/dependecny_injection/dependency_injection.dart';
import 'package:qtec_player/presentation/widgets/video_player/video_player_widget.dart';
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
    final videoPlayerCtrl = ref.watch(videoPlayerProvider.notifier);

    return Scaffold(
      body: WillPopScope(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          color: ColorPalate.defaultBlack,
          child: SafeArea(
            child: Column(
              children: [

                if(videoPlayerState.videoIsPortrait == false)
                const CustomAppBar(),

                Visibility(
                  visible: videoPlayerState.videoIsPlay == false,
                  replacement: VideoPlayerWidget(
                    videoUrl: videoPlayerState.videoRes?.results[videoIndex].manifest ?? "",
                  ),
                  child: InkWell(
                    onTap: ()=>videoPlayerCtrl.videoStateUpdate(videoIsPlay: true),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Hero(
                          tag: videoIndex.toString(),
                          child: FadeInImage.assetNetwork(
                            width: 1.sw,
                            height: 265.h,
                            image: videoPlayerState.videoRes?.results[videoIndex].thumbnail ?? "",
                            fit: BoxFit.cover,
                            placeholder: "",
                            placeholderFit: BoxFit.cover,
                            fadeInDuration: const Duration(milliseconds: 500),
                            fadeOutDuration: const Duration(milliseconds: 1000),
                            placeholderErrorBuilder: (context,_,stackTrace) => const ThumbnailLoader(),
                            imageErrorBuilder: (context,_, stackTrace) => const ThumbnailLoader(),
                          ),
                        ),


                        Container(
                          width: 40.w,
                          height: 40.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorPalate.blackColor.withOpacity(0.7)
                          ),
                          child: Icon(Icons.play_arrow,color: ColorPalate.defaultWhite,),
                        )


                      ],
                    ),
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


                     gap12,

                     ChannelSubscribeWidget(
                         channelId: videoPlayerState.videoRes?.results[videoIndex].channelId,
                         totalSubscriber: videoPlayerState.videoRes?.results[videoIndex].channelSubscriber,
                         channelName: videoPlayerState.videoRes?.results[videoIndex].channelName,
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

        onWillPop: ()async{
          videoPlayerCtrl.videoStateUpdate(videoIsPlay: false);
          return true;
        },

      ),
    );
  }
}
