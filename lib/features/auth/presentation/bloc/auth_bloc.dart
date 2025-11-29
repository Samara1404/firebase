import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_kg/features/auth/domain/repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  StreamSubscription<bool>? _authSubscription;

  AuthBloc(this.authRepository) : super(AuthInitial()) {

   
    on<AuthCheckRequested>((event, emit) async {
      emit(AuthLoading());
      await _authSubscription?.cancel();

      _authSubscription = authRepository.authStateChanges().listen((isLoggedIn) {
        add(_AuthStatusChanged(isLoggedIn));
      });
    });

    
    on<_AuthStatusChanged>((event, emit) {
      if (event.isLoggedIn) {
        emit(Authenticated());
      } else {
        emit(Unauthenticated());
      }
    });

    
    on<SignInRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        await authRepository.signIn(event.email, event.password);
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });

    
    on<SignUpRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        await authRepository.signUp(event.email, event.password);
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });

    
    on<SignOutRequested>((event, emit) async {
      await authRepository.signOut();
      emit(Unauthenticated());
    });
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}


class _AuthStatusChanged extends AuthEvent {
  final bool isLoggedIn;
  const _AuthStatusChanged(this.isLoggedIn);

  @override
  List<Object?> get props => [isLoggedIn];
}
