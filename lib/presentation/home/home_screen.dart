import 'package:qtec_player/core/dependecny_injection/dependency_injection.dart';
import 'package:qtec_player/presentation/presentation.dart';
import 'package:qtec_player/presentation/widgets/custom_app_bar.dart';
import 'package:qtec_player/presentation/widgets/loader/home_screen_loader.dart';
import 'package:qtec_player/presentation/widgets/video_item_view.dart';
import 'package:qtec_player/utils/utils.dart';

class HomeScreen extends HookConsumerWidget {

  static String get path => "/home";
  static String get name => "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final videoPlayerState = ref.watch(videoPlayerProvider);
    final videoPlayerCtrl = ref.watch(videoPlayerProvider.notifier);

    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: ColorPalate.defaultBlack,
        child: SafeArea(
          child: Column(
            children: [

              const CustomAppBar(),

              Expanded(
                  child: Visibility(
                    visible: videoPlayerState.videoRes != null &&
                        videoPlayerState.dataIsLoading == false,
                    replacement: const HomePageLoader(),
                    child: ListView.builder(
                      itemCount: videoPlayerState.videoRes?.results.length,
                        itemBuilder: (BuildContext context, index)=>
                            InkWell(
                              onTap: ()=>context.push("${HomeScreen.path}/${VideoViewScreen.path}/$index"),
                              child: Hero(
                                tag: index.toString(),
                                child: VideoItemView(
                                  thumbnailUri: videoPlayerState.videoRes?.results[index].thumbnail,
                                  videoTitle: videoPlayerState.videoRes?.results[index].title,
                                  channelImageUri: videoPlayerState.videoRes?.results[index].channelImage,
                                  totalVideoView: videoPlayerState.videoRes?.results[index].viewers,
                                  videoDuration: videoPlayerState.videoRes?.results[index].duration,
                                  publishedDate: videoPlayerState.videoRes?.results[index].createdAt,
                                ).animate().slideX(
                                  begin: 3,
                                  end: 0,
                                  duration: const Duration(milliseconds: 500)
                                ),
                              ),
                            )
                    ),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
