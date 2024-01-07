import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';
import 'package:qtec_player/core/dependecny_injection/dependency_injection.dart';
import 'package:qtec_player/utils/utils.dart';

class VideoPlayerWidget extends HookConsumerWidget {
  final String videoUrl;
  final bool isLive;
  const VideoPlayerWidget({
    super.key,
    required this.videoUrl,
    required this.isLive,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final videoPlayerState = ref.watch(videoPlayerProvider);
    final videoPlayerCtrl = ref.watch(videoPlayerProvider.notifier);

    return WillPopScope(
      child: SizedBox(
        width: 1.sw,
        child: YoYoPlayer(
            aspectRatio: 16 / 9,
            /// Url (Video streaming links)
            /// 'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
            /// "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
            /// "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
            url: videoUrl,
            autoPlayVideoAfterInit: videoPlayerState.videoIsPlay,
            videoStyle: VideoStyle(
              qualityStyle: CustomTextStyles.titleTextStyle,
              forwardAndBackwardBtSize: 30.0,
              playButtonIconSize: 40.0,
              showLiveDirectButton: isLive,
              playIcon: Icon(
                Icons.play_circle_fill_rounded,
                size: 40.sp, color: ColorPalate.redColor,
              ),
              pauseIcon: Icon(
                Icons.pause_circle_sharp,
                size: 40.sp, color: ColorPalate.redColor,
              ),
              videoQualityPadding: paddingH4,
              videoQualityBgColor: ColorPalate.defaultBlack.withOpacity(0.5),
            ),
            videoLoadingStyle: VideoLoadingStyle(
              loading: Center(
                child: SizedBox(
                  width: 35.w,
                    height: 35.w,
                    child: CircularProgressIndicator(color: ColorPalate.redColor)
                ),
              ),
            ),
            allowCacheFile: false,
            onCacheFileCompleted: (files) {
              print('Cached file length : ${files?.length}');

              if (files != null && files.isNotEmpty) {
                for (var file in files) {
                  print('File path : ${file.path}');
                }
              }
            },
            onCacheFileFailed: (error) {
              print('Cache file error : $error');
            },
            onFullScreen: (value) {
              videoPlayerCtrl.videoModeUpdate(videoIsPortrait: value);
            }
        ),
      ),

      onWillPop: ()async{
        videoPlayerCtrl.videoModeUpdate(videoIsPortrait: false);
        return true;
      },

    );
  }
}
