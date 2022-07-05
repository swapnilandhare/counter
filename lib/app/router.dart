import 'package:counter/ui/views/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/welcome/welcome_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: WelcomeView),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
