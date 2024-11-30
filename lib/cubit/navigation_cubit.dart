import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationState { home, phrases }

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.home);

  void goToPhrases() => emit(NavigationState.phrases);
}
