
import 'package:my_demo2/service/api_service.dart';
import 'package:my_demo2/service/user_service.dart';
import 'package:my_demo2/ui/screens/login/login_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes:[
    MaterialRoute(page: SplashView,initial: true),
    MaterialRoute(page: LoginView),
  ],
  dependencies:[
    LazySingleton(classType: NavigationService),
    //LazySingleton(classType: ApiService),
    //LazySingleton(classType: UserService),
  ],
)
class AppSetup{}