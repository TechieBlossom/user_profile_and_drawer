import 'package:bloc/bloc.dart';
import 'package:user_profile_settings_app/pages/notification_screen.dart';
import 'package:user_profile_settings_app/pages/user_profile_screen.dart';

enum DrawerEvents { ProfileEvent, NotificationEvent }

abstract class DrawerStates {}

class DrawerBloc extends Bloc<DrawerEvents, DrawerStates> {
  @override
  DrawerStates get initialState => UserProfileScreen();

  @override
  Stream<DrawerStates> mapEventToState(DrawerEvents event) async* {
    switch (event) {
      case DrawerEvents.ProfileEvent:
        yield UserProfileScreen();
        break;
      case DrawerEvents.NotificationEvent:
        yield NotificationScreen();
        break;
    }
  }
}
