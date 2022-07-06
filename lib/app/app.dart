import 'package:counter/api/api_service.dart';
import 'package:counter/ui/views/home/home_view.dart';
import 'package:counter/ui/views/welcome/welcome_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    // MaterialRoute(page: HomeView, initial: true),
    //MaterialRoute(page: WelcomeView),
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: WelcomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
