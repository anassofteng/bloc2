import 'package:equatable/equatable.dart';

abstract class SwitcheEvents {
  SwitcheEvents();

  @override
  List<Object?> get props => [];
}

class EnableorDisableNotification extends SwitcheEvents {}

class SliderEvent extends SwitcheEvents {
  double slider;
  SliderEvent({required this.slider});
  @override
  List<Object?> get props => [slider];
}
