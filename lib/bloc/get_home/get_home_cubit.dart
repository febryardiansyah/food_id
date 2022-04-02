import 'package:bloc/bloc.dart';
import 'package:food_id/model/home_model.dart';
import 'package:food_id/repositories/main_repo.dart';
import 'package:meta/meta.dart';

part 'get_home_state.dart';

class GetHomeCubit extends Cubit<GetHomeState> {
  GetHomeCubit() : super(GetHomeInitial());
  // initialize main repo
  final _repo = MainRepo();

  // event function for triggering getHome function
  Future<void> fetchHome()async{
    // notify loading state
    emit(GetHomeLoading());
    try{
      // fetching home API
      final res = await _repo.getHome();
      // check if status code equals to 200
      if (res.statusCode == 200) {
        // if true, parsing data from API json to object dart
        final data = List<HomeModel>.from(res.data['data'].map((json)=>HomeModel.fromJson(json)));
        // notify success state with data
        emit(GetHomeSuccess(data));
      } else {
        // if false, notify failure state with status message if not empty.
        // if res status message is empty, handle with Failure text
        emit(GetHomeFailure(res.statusMessage ?? 'Failure'));
      }
    }catch(e){
      print(e);
      // notify failure state when unexpected thing happens
      emit(GetHomeFailure(e.toString()));
    }
  }
}
