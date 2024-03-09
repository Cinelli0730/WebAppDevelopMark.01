import 'package:flutter/material.dart';
import 'package:webapp_dev_mark01_flutter/const/app_route.dart';
import 'package:webapp_dev_mark01_flutter/dto/at112/in_dto.dart';
import 'package:webapp_dev_mark01_flutter/page/common/dialog_form.dart';
import 'package:webapp_dev_mark01_flutter/page/common/input_form.dart';
import 'package:webapp_dev_mark01_flutter/service/at112/at112_service.dart';

class AT112Page extends StatefulWidget {
  const AT112Page({
    super.key,
    // 画面へ遷移する際にデータを渡す際は以下のようにextraにデータを設定する
    required this.userCode,
  });
  final String userCode;

  @override
  State<AT112Page> createState() => _LoginPageState();
}

class _LoginPageState extends State<AT112Page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _oldLoginPasswordController = TextEditingController();
  final TextEditingController _newLoginPasswordController = TextEditingController();
  final TextEditingController _newLoginPasswordConfrimController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Card(
            color: Theme.of(context).colorScheme.surface,
            elevation: 8,
            child: Container(
              padding: const EdgeInsets.all(32.0),
              constraints: const BoxConstraints(maxWidth: 350),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _gap(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Webapp-Dev-Mark.01",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                    ),
                    _gap(),
                    CustomTextFormField(
                      controller: _oldLoginPasswordController,
                      inputFieldType: InputFieldType.loginPassword,
                      prefixIcon: Icons.lock_outline_rounded,
                      labelText: 'Password',
                      hintText: 'Enter your old password',
                    ),
                    _gap(),
                    CustomTextFormField(
                      controller: _newLoginPasswordController,
                      inputFieldType: InputFieldType.loginPassword,
                      prefixIcon: Icons.lock_outline_rounded,
                      labelText: 'Password',
                      hintText: 'Enter your new password',
                    ),
                    _gap(),
                    CustomTextFormField(
                      controller: _newLoginPasswordConfrimController,
                      inputFieldType: InputFieldType.loginPassword,
                      prefixIcon: Icons.lock_outline_rounded,
                      labelText: 'Password',
                      hintText: 'Confrim new password',
                    ),
                    _gap(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.onBackground,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Done',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState?.validate() ?? false) {
                            await _update();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);

  Future<void> _update() async {
    if (_formKey.currentState?.validate() ?? false) {
      final oldPassword = _oldLoginPasswordController.text;
      final newPassword = _newLoginPasswordController.text;
      final newPasswordConfrim = _newLoginPasswordConfrimController.text;
      final userCode = widget.userCode;

      final inDto = InDto(
        userCode: userCode,
        oldLoginPassword: oldPassword,
        newLoginPassword: newPassword,
        newLoginPasswordConfrim: newPasswordConfrim,
      );

      final at112Service = AT112Service();
      final result = await at112Service.login(inDto);

      if (!mounted) return;
      if (result.isSuccess) {
        AppRoutes.routes.goNamed(result.data!.selectedFunction);
      } else {
        CommonDialogs.showLoginFailedDialog(context, 'Login failed', result.error ?? 'Unknown error occurred');
      }
    }
  }
}
