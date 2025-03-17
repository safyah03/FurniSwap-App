import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'used_furni_event.dart';
part 'used_furni_state.dart';

class UsedFurniBloc extends Bloc<UsedFurniEvent, UsedFurniState> {
  UsedFurniBloc() : super(UsedFurniInitial()) {
    on<UsedFurniEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
