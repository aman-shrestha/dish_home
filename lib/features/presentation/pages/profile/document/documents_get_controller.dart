import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../../api/api_client.dart';
import '../../../../../api/api_constant.dart';
import 'documents_model.dart';

class DocumentsGetController extends GetxController {
  var documentsGet = getMyDocumentsModel().obs;
  var isdocumentsLoading = true.obs;

  documetsGet() async {
    Future<http.Response> response = ApiClient().getRequest(GETDOCUMENTSURL);
    response.then((http.Response response) {
      if (response.statusCode == 200) {
        String responseBody = utf8.decode(response
            .bodyBytes); // Decode the response body bytes to a UTF-8 string

        getMyDocumentsModel getmydocuments =
            getMyDocumentsModel.fromJson(jsonDecode(responseBody));
        documentsGet.value = getMyDocumentsModel(
          // links: libraryListModel.links,
          // total: libraryListModel.total,
          // page: libraryListModel.page,
          // pageSize: libraryListModel.pageSize,
          // results: libraryListModel.results,
          documents: getmydocuments.documents,
        );

        isdocumentsLoading.value = false;
        // isBannerLoading.value = false;
      } else {
        isdocumentsLoading.value = false;
      }
    });
  }
}
