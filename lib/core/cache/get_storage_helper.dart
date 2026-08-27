import 'package:get_storage/get_storage.dart';

class GetStorageHelper {
  static late GetStorage getStorage;

  static Future<void> initGetStorage() async {
    // Initialize GetStorage
    await GetStorage.init();
    getStorage = GetStorage();
  }

  //save data in get storage
  static Future<void> setGetStorageData({
    required String key,
    required dynamic value,
  }) async {
    await getStorage.write(key,value);
  }

  //get data from get storage
  static dynamic getGetStorageData({
    required String key,
  }) {
    return getStorage.read(key);
  }

  //remove data from get storage
  static Future<void> removeGetStorageData({
    required String key,
  }) async {
    await getStorage.remove(key);
  }

  //clear all data from get storage
  static Future<void> clearGetStorageData() async {
    await getStorage.erase();
  }
}