import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qtec_player/application/app.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(
      child: QtecPlayerApp()
   )
  );
}

