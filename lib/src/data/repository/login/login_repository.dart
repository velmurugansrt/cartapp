import 'package:cartapp/src/constants/api_services_urls.dart';
import 'package:cartapp/src/data/network/http_client.dart';
import 'package:cartapp/src/models/login/user_list_response_model.dart';

class LoginRepository {
  Future<UserListResponseModel> fetchuserList() async {
    final Map<String, dynamic> resp =
        await HTTPClient().getJSONRequest(url: ApiServiceUrls.fetchUserList);
    return UserListResponseModel.fromJson(resp);
  }
}
