// forgot_password_verify_code_screen.dart
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'create_new_password.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordVerifyCodeScreen extends StatefulWidget {
  final String email;

  const ForgotPasswordVerifyCodeScreen({super.key, required this.email});

  @override
  State<ForgotPasswordVerifyCodeScreen> createState() => _ForgotPasswordVerifyCodeScreenState();
}

class _ForgotPasswordVerifyCodeScreenState extends State<ForgotPasswordVerifyCodeScreen> {
  final TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  bool _isLoading = false;

  void _verifyCode() async {
    setState(() {
      _isLoading = true;
    });

    final String verificationCode = currentText.trim();

    if (verificationCode.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vui lòng nhập mã xác minh')),
      );
      setState(() {
        _isLoading = false;
      });
      return;
    }

    // Mô phỏng API call
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      _isLoading = false;
    });

    // Chuyển sang màn hình tạo mật khẩu, truyền email + code
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ForgotPasswordCreateNewPasswordScreen(
          email: widget.email,
          code: verificationCode,
        ),
      ),
    );
  }
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.primaryBlue),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Image.asset('assets/images/uth_logo.png', height: 120),
            const SizedBox(height: 10),
            Text(
              'SmartTasks',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryBlue,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Verify Code',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter the code we just sent you on your registered Email',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            PinCodeTextField(
              appContext: context,
              length: 5,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 50,
                fieldWidth: 50,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                activeColor: Colors.grey.shade300,
                inactiveColor: Colors.grey.shade300,
                selectedColor: AppColors.primaryBlue,
              ),
              cursorColor: AppColors.primaryBlue,
              enableActiveFill: true,
              controller: textEditingController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
            ),
            const SizedBox(height: 30),
            _isLoading
                ? const CircularProgressIndicator()
                : SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _verifyCode,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
