import 'package:qtec_player/data/model/video_res.dart';
import 'package:qtec_player/utils/utils.dart';
class ChannelSubscribeWidget extends HookConsumerWidget {
  final int? channelId;
  final String? channelImageUri;
  final ChannelName? channelName;
  final String? totalSubscriber;
  final bool? channelIsVerified;
  const ChannelSubscribeWidget({
    super.key,
    required this.channelId,
    required this.channelImageUri,
    required this.channelName,
    required this.totalSubscriber,
    required this.channelIsVerified
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: paddingH2,
      child: Row(
        children: [

          ClipRRect(
            borderRadius: radiusCircle,
            child: FadeInImage.assetNetwork(
              width: 45.w,
              height: 45.w,
              image: channelImageUri ?? "",
              fit: BoxFit.cover,
              placeholder: "",
              placeholderFit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 500),
              fadeOutDuration: const Duration(milliseconds: 1000),
              placeholderErrorBuilder: (context,_,stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 45.sp,),
              imageErrorBuilder: (context,_, stackTrace) => Icon(Icons.play_circle_outline,color: ColorPalate.redColor,size: 45.sp,),
            ),
          ),


          gap6,


          Column(
            crossAxisAlignment: crossStart,
            mainAxisAlignment: mainStart,
            children: [

              Row(
                children: [
                  Text(
                    channelName == ChannelName.CHANNEL_NAME_ONE_UMMAH ?
                    "One Ummah +" : channelName == ChannelName.SAKIB_LIVE_TV ?
                    "Sakib Live Tv" : channelName == ChannelName.ONE_UMMAH ?
                        "One Ummah" : "Sayed Tv Ts",
                    style: CustomTextStyles.channelNameTextStyle,
                  ),

                  gap6,

                  if(channelIsVerified ?? false)
                  Icon(Icons.verified,color: ColorPalate.defaultBlueGrey,size: 15.sp,)

                ],
              ),

              Text(
                "$totalSubscriber ${TextConstants.SUBSCRIBERS}",
                style: CustomTextStyles.viewsAndPublishedStyle,
              ),


            ],
          ),

          const Spacer(),


          ElevatedButton.icon(
            onPressed: () {  },
            icon: Icon(Icons.add,size: 18.sp,),
            label: Text(TextConstants.SUBSCRIBE,style: CustomTextStyles.titleTextStyle),
            style: ElevatedButton.styleFrom(backgroundColor: ColorPalate.redColor),
          )


        ],
      ),
    );
  }
}
