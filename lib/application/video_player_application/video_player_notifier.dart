import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qtec_player/application/video_player_application/video_player_state.dart';
import 'package:qtec_player/domain/video_player_domain/video_player_domain.dart';

class VideoPlayerNotifier extends StateNotifier<VideoPlayerState>{

  ///This class I am create for
  ///My necessary state update with Riverpod State Notifier

  VideoPlayerDomain videoPlayerDomain;
  VideoPlayerNotifier({required this.videoPlayerDomain}):super(VideoPlayerState.init());

  void _stateMaker(VideoPlayerState newState)=> state = newState;

  void init()async{
    _stateMaker(state.copyWith(dataIsLoading: true));
    try{
      await videoPlayerDomain.getVideoPlayerData().then((value){
        if(value != null){
          _stateMaker(state.copyWith(videoRes: value));
        }
        _stateMaker(state.copyWith(dataIsLoading: false));
      });
    }catch(e,error){
      log(e.toString());
      log(error.toString());
    }
  }

}