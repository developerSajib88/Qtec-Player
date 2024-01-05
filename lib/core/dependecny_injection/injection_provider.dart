part of 'dependency_injection.dart';

/// This is my riverpod state provider
final videoPlayerProvider =
StateNotifierProvider<VideoPlayerNotifier,VideoPlayerState>((ref) =>
    VideoPlayerNotifier(videoPlayerDomain: singleTon()));