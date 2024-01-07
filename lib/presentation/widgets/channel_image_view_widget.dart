import 'package:qtec_player/utils/utils.dart';

class ChannelImageViewWidget extends HookWidget {
  final String? imageUrl;
  const ChannelImageViewWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radiusCircle,
      child: FadeInImage.assetNetwork(
        width: 45.w,
        height: 45.w,
        image: imageUrl ?? "",
        fit: BoxFit.cover,
        placeholder: "",
        placeholderFit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 500),
        fadeOutDuration: const Duration(milliseconds: 1000),
        placeholderErrorBuilder: (context,_,stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 45.sp,),
        imageErrorBuilder: (context,_, stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 45.sp,),
      ),
    );
  }
}
