import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dilevery_manager_home_event.dart';
part 'dilevery_manager_home_state.dart';

class DileveryManagerHomeBloc extends Bloc<DileveryManagerHomeEvent, DileveryManagerHomeState> {
  DileveryManagerHomeBloc() : super(DileveryManagerHomeInitial()) {
    on<DileveryManagerHomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
