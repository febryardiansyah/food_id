import 'package:dio/dio.dart';

class MainRepo {
  // initialize dio package for communicate to API
  Dio _dio = Dio();
  // function for get home API that
  Future<Response> getHome()async{
    try{
      // get data from API using get method
      final _res = await _dio.get('https://food.mockable.io/v1/banner');
      // return data from API
      return _res;
    //  handle error when fetching data
    }on DioError catch(e){
      // return error response
      return e.response!;
    }
  }
}