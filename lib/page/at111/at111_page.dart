import 'package:flutter/material.dart';
import 'package:webapp_dev_mark01_flutter/const/app_const.dart';
import 'package:webapp_dev_mark01_flutter/const/app_route.dart';
import 'package:webapp_dev_mark01_flutter/dto/at111/in_dto.dart';
import 'package:webapp_dev_mark01_flutter/page/common/dialog_form.dart';
import 'package:webapp_dev_mark01_flutter/page/common/input_form.dart';
import 'package:webapp_dev_mark01_flutter/service/at111/at111_service.dart';

class AT111Page extends StatefulWidget {
  const AT111Page({super.key});

  @override
  State<AT111Page> createState() => _AT111PageState();
}

class _AT111PageState extends State<AT111Page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userCodeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

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
                      controller: _userCodeController,
                      inputFieldType: InputFieldType.userCode,
                      prefixIcon: Icons.person_outline_rounded,
                      labelText: 'UserCode',
                      hintText: 'Enter your user code',
                    ),
                    _gap(),
                    CustomTextFormField(
                      controller: _passwordController,
                      inputFieldType: InputFieldType.loginPassword,
                      prefixIcon: Icons.lock_outline_rounded,
                      labelText: 'Password',
                      hintText: 'Enter your password',
                    ),
                    _gap(),
                    CheckboxListTile(
                      value: _rememberMe,
                      onChanged: (value) {
                        if (value == null) return;
                        setState(() {
                          _rememberMe = value;
                        });
                      },
                      title: const Text('Remember me'),
                      controlAffinity: ListTileControlAffinity.leading,
                      dense: true,
                      contentPadding: const EdgeInsets.all(0),
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
                            'Login',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                        onPressed: () async {
                          await _login(); // ログインメソッドを呼び出す
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

  Future<void> _login() async {
    if (_formKey.currentState?.validate() ?? false) {
      final userCode = _userCodeController.text;
      final password = _passwordController.text;

      final inDto = InDto(userCode: userCode, loginPassword: password);
      final at111Service = AT111Service();
      final result = await at111Service.login(inDto);

      if (!mounted) return; // ここでウィジェットがまだマウントされているかチェック
      if (result.isSuccess) {
        if (result.data!.selectedFunction == FunctionID.AT121) {
          AppRoutes.routes.goNamed(FunctionID.AT121, extra: result.data!);
        } else {
          AppRoutes.routes.goNamed(FunctionID.AT112, extra: result.data!.userCode);
        }
      } else {
        CommonDialogs.showLoginFailedDialog(context, 'Login failed', result.error ?? 'Unknown error occurred');
      }
    }
  }

  Widget _gap() => const SizedBox(height: 16);
}
