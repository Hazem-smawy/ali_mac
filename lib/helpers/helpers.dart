/*
! code for fetch data for all models

? Future<T> fetchData<T>() async {
  final respnse = true;

  if (respnse) {
    final data = json.decode(respnse.data);
    final data = 1;

    /
    ? return data as T;
     
  } else {
   ? throw Exception('faild to laod data');
  }
}

? final data = await fetchData<Map<String,dynamic>>();
*/


/*
! check the internet connection

Future<bool> checkInternetConnection() async {
  var connectivityResult = await Connectivity().checkConnectivity();

  if(connectivityResult == ConnectivityResult.none){
    return false;
  }else {
    return true;
  }
}

? bool isConnected = await checkInternetConnection();

if(isConnected ){
  // do some thing
}else {
  //do some thing
}

*/