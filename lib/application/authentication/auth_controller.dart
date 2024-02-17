import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/i_repos/i_Auth_repository.dart';
import '../failure_handler/failure.dart';
import '../failure_handler/failure_controller.dart';

enum AuthPages { login, register, resetPassword, verifyCode, forgotPassword }

enum VerifyReason { register, forgotPassword }

@singleton
class AuthController extends ChangeNotifier {
  IAuthRepository authRepository;
  final FailureController _failureController;

  AuthController(this.authRepository, this._failureController);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  AuthPages _activePage = AuthPages.login;
  AuthPages get activePage => _activePage;

  VerifyReason _verifyReason = VerifyReason.register;
  VerifyReason get verifyReason => _verifyReason;

  Failure? _currentFailure;
  Failure? get currentFailure => _currentFailure;

  void setActivePage(AuthPages newPage) {
    _activePage = newPage;
    notifyListeners();
  }

  void setVerifyReason(VerifyReason newReason) {
    _verifyReason = newReason;
    notifyListeners();
  }

  Future<void> register(String email, String password) async {
    print('Registration...');
  }

  Future<void> initResetPassowd(String email) async {
    print('Resetting password...');
  }

  Future<void> changePassowd(String newPassword) async {
    print('changing password...');
  }

  Future<void> login(String email, String password) async {
    print('Loggin in...');
  }

  Future<void> logout() async {
    print('Loggin out...');
  }

  void _setIsLoadingAndNotifyListeners(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _setCurrentFailureAndNotifyListeners(Failure? failure) {
    _failureController.currentFailure = failure;
    _currentFailure = failure;
    notifyListeners();
  }
}
