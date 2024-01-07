import 'package:equatable/equatable.dart';
import 'package:qtec_player/data/model/video_res.dart';

class VideoPlayerState extends Equatable{

  /// This Class I am create for Storing my States.
  /// Update and Latest state

  final bool dataIsLoading;
  final bool videoIsPlay;
  final bool videoIsPortrait;
  final VideoRes? videoRes;

  ///Constructor
  const VideoPlayerState({
    required this.dataIsLoading,
    required this.videoIsPlay,
    required this.videoIsPortrait,
    required this.videoRes,

  });

  @override
  List<Object?> get props => [
    dataIsLoading,
    videoIsPlay,
    videoIsPortrait,
    videoRes,
  ];


  /// This is initial factory construction
  /// Which i am using for alternatively VideoPlayerState Object
  factory VideoPlayerState.init()=> const VideoPlayerState(
      dataIsLoading: false,
      videoIsPlay: false,
      videoIsPortrait: false,
      videoRes: null
  );

  /// CopyWith Function
  /// This is I am creating for
  /// Update state one by one
  VideoPlayerState copyWith({
    bool? dataIsLoading,
    bool? videoIsPlay,
    bool? videoIsPortrait,
    VideoRes? videoRes
  })=> VideoPlayerState(
      dataIsLoading: dataIsLoading ?? this.dataIsLoading,
      videoIsPlay: videoIsPlay ?? this.videoIsPlay,
      videoIsPortrait: videoIsPortrait ?? this.videoIsPortrait,
      videoRes: videoRes ?? this.videoRes
  );


}