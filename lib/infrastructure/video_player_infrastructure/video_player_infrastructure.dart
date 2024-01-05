import 'package:qtec_player/data/api/api_services.dart';
import 'package:qtec_player/data/model/video_res.dart';
import 'package:qtec_player/domain/video_player_domain/video_player_domain.dart';

class VideoPlayerInfrastructure implements VideoPlayerDomain{

  @override
  Future<VideoRes?> getVideoPlayerData() async => await ApiServices.getVideoRes();

}