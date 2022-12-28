import 'package:final_project/Packages/package.dart';
import 'package:final_project/View/Home/home_screen.dart';
import 'package:final_project/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

 // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home: GetStorage().read("userID") == null ? const SignUpAndSignIn() : AppLayout(),
      // initialRoute: RouterNames.appLayout,
      home: PageViewScreen(),
      getPages: getPages,
      translations: Languages(),
      locale: const Locale('ar'),
      // The Languages it shulde be Arabic when tha App Start
    );
  }
}
