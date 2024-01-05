import 'package:equatable/equatable.dart';
import 'package:qtec_player/data/model/video_res.dart';

class VideoPlayerState extends Equatable{
  final bool dataIsLoading;
  final VideoRes? videoRes;

  const VideoPlayerState({
    required this.dataIsLoading,
    required this.videoRes
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    dataIsLoading,
    videoRes,
  ];


  factory VideoPlayerState.init()=> const VideoPlayerState(
      dataIsLoading: false,
      videoRes: null
  );


  VideoPlayerState copyWith({
    bool? dataIsLoading,
    VideoRes? videoRes
  })=> VideoPlayerState(
      dataIsLoading: dataIsLoading ?? this.dataIsLoading,
      videoRes: videoRes ?? this.videoRes
  );


}