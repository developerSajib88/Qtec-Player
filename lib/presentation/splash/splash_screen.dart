
import 'package:qtec_player/presentation/home/home_screen.dart';
import 'package:qtec_player/utils/utils.dart';

class SplashScreen extends HookConsumerWidget {

  static String get path => "/";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    /// Use effect is as like initState method.
    /// When first time hook consumer widget first time build
    /// Then useEffect function is called.
    /// Here i am using useEffect for navigate home screen
    /// After 4 second
    useEffect((){
      Future.delayed(const Duration(milliseconds: 3000),(){
        context.pushReplacement(HomeScreen.path);
      });
      return null;
    },[]);

    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: ColorPalate.defaultBlack,
        child: Center(
          child: Icon(
            Icons.play_circle_outline,
            size: 70.sp,
            color: ColorPalate.redColor,
          ),
        ),
      ),
    );
  }
}
