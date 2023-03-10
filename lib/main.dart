import 'package:final_project/firebase_options.dart';
import 'Packages/package.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: GetStorage().read("userID") == null ? const SignUpAndSignIn() : AppLayout(),
      initialRoute: RouterNames.splash,
      getPages: getPages,
      translations: Languages(),
      locale: const Locale('ar'),
      // The Languages it shulde be Arabic when tha App Start
    );
  }
}
