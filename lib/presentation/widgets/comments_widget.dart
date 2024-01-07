
import 'package:qtec_player/utils/utils.dart';

class CommentsWidget extends HookConsumerWidget {
  const CommentsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final commentController = useMemoized(() => TextEditingController());

    return Column(
      children: [
        
        Row(
          children: [
            
            Text("${TextConstants.COMMENTS}  7.5k",
                style: CustomTextStyles.viewsAndPublishedStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
                )
            ),

            const Spacer(),


            ClipRRect(
              borderRadius: radiusCircle,
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                    onPressed: (){},
                    splashColor: ColorPalate.redColor,
                    icon: Icon(Icons.expand,color: ColorPalate.greyColor,size: 24.sp)
                ),
              ),
            ),

            
          ],
        ),

        TextFormField(
          controller: commentController,
          cursorColor: ColorPalate.redColor,
          style: CustomTextStyles.viewsAndPublishedStyle,
          minLines: 1,
          maxLines: 5,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.send_rounded),
              color: commentController.value.text.isNotEmpty ? ColorPalate.redColor : ColorPalate.greyColor,
            ),
              hintText: TextConstants.ADD_COMMENT,
              hintStyle: CustomTextStyles.viewsAndPublishedStyle,

            focusedBorder: OutlineInputBorder(
              borderRadius: radius8,
              borderSide: BorderSide(
                  width: 2,
                  color: ColorPalate.greyColor
              ),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: radius8,
              borderSide: BorderSide(
                  width: 2,
                  color: ColorPalate.greyColor
              ),
            ),



          ),
        )

        
      ],
    );
  }
}
