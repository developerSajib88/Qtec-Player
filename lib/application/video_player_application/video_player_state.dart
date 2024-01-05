import 'package:equatable/equatable.dart';
import 'package:qtec_player/data/model/video_res.dart';

class VideoPlayerState extends Equatable{

  /// This Class I am create for Storing my States.
  /// Update and Latest state

  final bool dataIsLoading;
  final VideoRes? videoRes;

  ///Constructor
  const VideoPlayerState({
    required this.dataIsLoading,
    required this.videoRes
  });

  @override
  List<Object?> get props => [
    dataIsLoading,
    videoRes,
  ];


  /// This is initial factory construction
  /// Which i am using for alternatively VideoPlayerState Object
  factory VideoPlayerState.init()=> const VideoPlayerState(
      dataIsLoading: false,
      videoRes: null
  );

  ///CopyWith Function
  ///This is I am creating for
  ///Update state one by one
  VideoPlayerState copyWith({
    bool? dataIsLoading,
    VideoRes? videoRes
  })=> VideoPlayerState(
      dataIsLoading: dataIsLoading ?? this.dataIsLoading,
      videoRes: videoRes ?? this.videoRes
  );


}