import 'package:qtec_player/data/api/apI_urls.dart';
import 'package:qtec_player/data/api/api_method.dart';
import 'package:qtec_player/data/model/video_res.dart';

class ApiServices{

  /// This class i am create for
  /// Separate api service method from api method
  /// And after getting response I will pass data into model


  // For getting trending video list and pass data into model
  static Future<VideoRes?> getVideoRes()async {
    Map<String, dynamic>? response = await ApiMethod.get(ApiUrl.videoApiUrl);
    if (response != null){
      return VideoRes.fromJson(response);
    }else{
      return null;
    }
  }


}