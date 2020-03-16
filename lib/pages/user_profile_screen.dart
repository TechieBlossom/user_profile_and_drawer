import 'package:flutter/material.dart';
import 'package:user_profile_settings_app/bloc/drawer_bloc.dart';
import 'package:user_profile_settings_app/widgets/custom_switch.dart';

class UserProfileScreen extends StatelessWidget with DrawerStates {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomSwitch(
          isOn: false,
          activeBorderColor: Colors.white,
          inactiveBorderColor: Theme.of(context).primaryColor,
          borderWidth: 1,
          padding: 8,
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: Theme.of(context).scaffoldBackgroundColor,
          activeText: "ON",
          inactiveText: "OFF",
          activeTextStyle: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          inactiveTextStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          activeThumbColor: Theme.of(context).scaffoldBackgroundColor,
          inactiveThumbColor: Theme.of(context).scaffoldBackgroundColor,
          thumbHeight: 20,
        ),
      ],
    );
  }
}
