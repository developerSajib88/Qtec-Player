import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qtec_player/application/app.dart';
import 'package:qtec_player/core/dependecny_injection/dependency_injection.dart' as di;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const ProviderScope(
      child: QtecPlayerApp()
   )
  );
}

