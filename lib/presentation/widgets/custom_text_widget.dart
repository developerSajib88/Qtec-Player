import 'package:qtec_player/utils/utils.dart';

class CustomTextWidget extends HookWidget {
  final String? text;
  const CustomTextWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: CustomTextStyles.viewsAndPublishedStyle,
    );
  }
}
