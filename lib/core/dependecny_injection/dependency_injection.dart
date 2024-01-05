import 'package:get_it/get_it.dart' as di;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qtec_player/application/video_player_application/video_player_notifier.dart';
import 'package:qtec_player/application/video_player_application/video_player_state.dart';
import 'package:qtec_player/domain/video_player_domain/video_player_domain.dart';
import 'package:qtec_player/infrastructure/video_player_infrastructure/video_player_infrastructure.dart';

part 'injection_provider.dart';

/// Here I am doing dependency injection
/// According to Singleton design pattern
final singleTon = di.GetIt.instance;
Future<void> init()async {
  singleTon.registerLazySingleton<VideoPlayerDomain>(() => VideoPlayerInfrastructure());
}