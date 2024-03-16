// import'package:dio/dio.dart';
// import'package:design/business_logics/service/all_getter_setter.dart';
// import'package:design/business_logics/service/app_urls.dart';
// import'package:design/models/add_screen_model.dart';
// import'package:design/models/response_wrapper.dart';
// import'package:design/utils/common/print_log.dart';
// /// Abstract class defining methods for handling screen-related operations.
// abstract class ScreenRepo {
//   /// Adds a new screen with the provided form data.
//   Future<ResponseWrapper> addNewScreen(FormData formData);
//
//   /// Retrieves all screens based on the provided form data.
//   Future<ResponseWrapper> getAllScreen(FormData formData);
// }
//
// /// Implementation of ScreenRepo interface for handling screen-related operations.
// class ScreenRepoImp extends ScreenRepo {
//   @override
//   Future<ResponseWrapper> getAllScreen(FormData formData) async {
//     try {
//       final response = await getHttpService.get(
//         queryParameters: Map.fromEntries(formData.fields),
//         endPoint: AppEndPoint.getAllScreen,
//       );
//       if (response.statusCode == RepoResponseStatus.success ||
//           response.statusCode == RepoResponseStatus.success1) {
//         return getSuccessResponseWrapper(
//             ScreenListModel.fromJson(response.data ?? {}));
//       } else {
//         return getFailedResponseWrapper(response.statusMessage);
//       }
//     } catch (e, t) {
//       errorLog(e.toString() + t.toString(), fun: 'getAllScreen');
//       return getFailedResponseWrapper(e);
//     }
//   }
//
//   @override
//   Future<ResponseWrapper> addNewScreen(FormData formData) async {
//     try {
//       final response = await getHttpService.post(
//         data: formData,
//         endPoint: AppEndPoint.addNewScreen,
//       );
//       if (response.statusCode == RepoResponseStatus.success ||
//           response.statusCode == RepoResponseStatus.success1) {
//         return getSuccessResponseWrapper(
//             AddScreenModel.fromJson(response.data ?? {}));
//       } else {
//         return getFailedResponseWrapper(response.statusMessage);
//       }
//     } catch (e, t) {
//       errorLog(e.toString() + t.toString(), fun: 'addNewScreen');
//       return getFailedResponseWrapper(e);
//     }
//   }
// }
