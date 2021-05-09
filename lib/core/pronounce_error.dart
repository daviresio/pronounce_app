import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:pedantic/pedantic.dart';

class PronounceError {
  static void recordError(Object e, StackTrace s) {
    print(e);
    unawaited(FirebaseCrashlytics.instance.recordError(e, s));
  }
}
