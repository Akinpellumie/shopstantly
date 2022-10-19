import 'dart:io';

abstract class CommonRepository {
  void uploadFileToServer(File file, String fileName, String userId) async {}
}
