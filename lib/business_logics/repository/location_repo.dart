// import'package:design/business_logics/service/dio_services.dart';
// import'package:design/utils/common/print_log.dart';
// import'package:dio/dio.dart';
// import'package:geocoding/geocoding.dart';
// import'package:geolocator/geolocator.dart';
//
// class LatLngModel {
//   final double latitude;
//   final double longitude;
//
//   LatLngModel(this.latitude, this.longitude);
// }
//
// abstract class LocationRepo {
//   Future<LatLngModel> getCurrentLatLng();
//
//   Placemark getPlacemarkFromGoogleRes(components);
//
//   Future<List?> getAddressWithLatLang(LatLngModel latLng);
//
//   // Future<PlaceModel> getPlace(String placeId);
//
//   // Future<PredictionsListModel> locationAutoComplete(String input);
// }
//
// class LocationRepoImp extends LocationRepo {
//
//   @override
//   Future<List?> getAddressWithLatLang(LatLngModel latLng) async {
//     String apiurl =
//         "https://maps.googleapis.com/maps/api/geocode/json?latlng=${latLng.latitude},${latLng.longitude}&key=$apikey";
//
//     Response res = await Dio().get(apiurl);
//     if (res.statusCode == 200) {
//       Map data = res.data;
//
//       if (data["status"] == "OK") {
//         if (data["results"].length > 0) {
//           Map firstresult = data["results"][0]; //select the first address
//
//           Placemark place =
//               getPlacemarkFromGoogleRes(firstresult["address_components"]);
//
//           String commaString(s) {
//             if (s != null) {
//               return "$s, ";
//             } else {
//               return "";
//             }
//           }
//
//           String addressB =
//               '${commaString(place.street)}${commaString(place.subLocality)}${commaString(place.locality)}${commaString(place.postalCode)}${commaString(place.country)}';
//
//           printLog("addressB $addressB");
//           printLog("addressB $place");
//
//           return [addressB, place];
//         }
//       } else {
//         printLog(data["error_message"]);
//       }
//     } else {
//       printLog("error while fetching geocoding data");
//     }
//     return null;
//   }
//
//   @override
//   Future<LatLngModel> getCurrentLatLng() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//
//     if (!serviceEnabled) {
//       return Future.error('Location services are disabled.');
//     }
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }
//
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }
//
//     Position position = await Geolocator.getCurrentPosition();
//     return LatLngModel(position.latitude, position.longitude);
//   }
//
//   @override
//   Placemark getPlacemarkFromGoogleRes(components) {
//     Placemark? placemark;
//     Map place = {};
//
//     for (var item in components) {
//       for (var type in item["types"]) {
//         // conditions
//         if (type == "name") {
//           place["name"] = item["long_name"];
//         }
//
//         if (type == "street") {
//           place["street"] = item["long_name"];
//         }
//         if (type == "sublocality") {
//           place["sublocality"] = item["long_name"];
//         }
//
//         if (type == "locality") {
//           place["locality"] = item["long_name"];
//         }
//
//         if (type == "administrative_area_level_2") {
//           place["subAdministrativeArea"] = item["long_name"];
//         }
//
//         if (type == "administrative_area_level_1") {
//           place["administrativeArea"] = item["long_name"];
//         }
//
//         if (type == "postal_code") {
//           place["postalCode"] = item["long_name"];
//         }
//
//         if (type == "country") {
//           place["country"] = item["long_name"];
//         }
//       }
//     }
//
//     placemark = Placemark(
//       name: place["name"],
//       street: place["street"],
//       locality: place["locality"],
//       subLocality: place["sublocality"],
//       administrativeArea: place["administrativeArea"],
//       subAdministrativeArea: place["subAdministrativeArea"],
//       postalCode: place["postalCode"],
//       country: place["country"],
//     );
//
//     return placemark;
//   }
//
//   @override
//   Future<PredictionsListModel> locationAutoComplete(String input) async {
//     try {
//       final String url =
//           "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&key=$key";
//       Response res = await Dio().get(url);
//       return PredictionsListModel.fromJson(res.data);
//     } on DioException catch (e) {
//       responseErrorHandler(response: e.response, dioErrorType: e.type);
//     } catch (e, t) {
//       errorLog(e.toString() + t.toString(), fun: "locationAutoComplete");
//     }
//     return PredictionsListModel();
//   }
//
//   @override
//   Future<PlaceModel> getPlace(String placeId) async {
//     try {
//       final String url =
//           "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key";
//       Response res = await Dio().get(url);
//       return PlaceModel.fromJson(res.data);
//     } on DioException catch (e) {
//       responseErrorHandler(response: e.response, dioErrorType: e.type);
//     } catch (e, t) {
//       errorLog(e.toString() + t.toString(), fun: "getPlace");
//     }
//     return PlaceModel();
//   }
// }
