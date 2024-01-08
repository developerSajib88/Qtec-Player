import 'package:qtec_player/presentation/widgets/channel_image_view_widget.dart';
import 'package:qtec_player/presentation/widgets/custom_text_widget.dart';
import 'package:qtec_player/utils/utils.dart';
class ChannelSubscribeWidget extends HookConsumerWidget {
  final int? channelId;
  final String? channelImageUri;
  final String? channelName;
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

          // Channel logo or Image widget
          ChannelImageViewWidget(
            imageUrl: channelImageUri ?? "",
          ),


          gap6,


          Column(
            crossAxisAlignment: crossStart,
            mainAxisAlignment: mainStart,
            children: [

              Row(
                children: [
                  Text(
                    // channelName == ChannelName.CHANNEL_NAME_ONE_UMMAH ?
                    // "One Ummah +" : channelName == ChannelName.SAKIB_LIVE_TV ?
                    // "Sakib Live Tv" : channelName == ChannelName.ONE_UMMAH ?
                    //     "One Ummah" : "Sayed Tv Ts",
                    channelName ?? "",
                    style: CustomTextStyles.channelNameTextStyle,
                  ),

                  gap6,

                  if(channelIsVerified ?? false)
                  Icon(Icons.verified,color: ColorPalate.defaultBlueGrey,size: 15.sp,)

                ],
              ),

              CustomTextWidget(
                text: "$totalSubscriber ${TextConstants.SUBSCRIBERS}",
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
