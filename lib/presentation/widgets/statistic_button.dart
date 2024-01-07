import 'package:qtec_player/utils/utils.dart';

class StatisticButton extends HookWidget {
  final Icon icon;
  final String text;
  final VoidCallback onPressed;
  const StatisticButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossCenter,
      mainAxisAlignment: mainCenter,
      children: [


        ClipRRect(
          borderRadius: radiusCircle,
          child: Material(
            color: Colors.transparent,
            child: IconButton(
                onPressed: ()=> onPressed(),
                splashColor: ColorPalate.redColor,
                icon: icon,
            ),
          ),
        ),


        Text(TextConstants.SHARE,style: CustomTextStyles.statisticsTextStyle,)

      ],
    );
  }
}
