import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wash_icareer/features/register/data/repo/register_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(RegisterInitial());


  register(){
    _registerRepo.register();
  }
}
