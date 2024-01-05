import 'package:qtec_player/data/model/video_res.dart';

abstract class VideoPlayerDomain {
  /// This is my domain class
  /// Here i am create some interface method
  /// These method i am inject with infrastructure

  Future<VideoRes?> getVideoPlayerData();

}