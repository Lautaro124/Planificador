import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/assets/enums/navigation.dart';
import 'package:planificador/blocs/user/user_bloc.dart';
import 'package:planificador/models/user/user.dart';
import 'package:planificador/models/validations/input_validation.dart';
import 'package:planificador/screens/main/utils/can_entry.dart';
import 'package:planificador/screens/main/utils/texts.dart';
import 'package:planificador/screens/main/utils/utils.dart';
import 'package:planificador/screens/main/widgets/text_field.dart';
import 'package:planificador/widgets/screen_generator/scafolt_generator.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _registerFromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return generateScreen(
      context,
      isLogin: true,
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Form(
            key: _registerFromKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: maxPaddingWidth,
                vertical: maxPaddingHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      textField(
                        label: email,
                        onChange: (String? value) => setEmail = value,
                        validatior: (String? value) =>
                            InputValidation(value).email(),
                        keyboard: TextInputType.emailAddress,
                      ),
                      textField(
                        label: password,
                        onChange: (String? value) => setPassword = value,
                        validatior: (String? value) =>
                            InputValidation(value).empty(),
                        obscure: true,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => submitForm(context),
                    child: const TextPrimary(loginMessage),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void submitForm(BuildContext context) {
    if (!camEntry(context, !_registerFromKey.currentState!.validate())) return;

    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
    userBloc.add(LoginUserEvent(User(mail: setEmail, password: setPassword)));

    Navigator.pushNamed(context, NavigationRoutes.dashboard.name);
  }
}
