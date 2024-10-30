import 'package:bloc/bloc.dart';
import 'package:bloc2/bloc/switch_event.dart';
import 'package:bloc2/bloc/switch_states.dart';

class SwitchBloc extends Bloc<SwitcheEvents, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<EnableorDisableNotification>(_enableorDisableNotification);
    on<SliderEvent>(_slider);
  }
  void _enableorDisableNotification(
      EnableorDisableNotification events, Emitter<SwitchStates> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _slider(SliderEvent events, Emitter<SwitchStates> emit) {
    emit(state.copyWith(slider: events.slider));
  }
}
