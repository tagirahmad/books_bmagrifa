import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

Future<Uint8List> _loadFileBytes(String url) async {
  Uint8List bytes;
  try {
    bytes = await readBytes(Uri.parse(url));
  } catch (exception) {
    print('failed to download file');
    rethrow;
  }
  return bytes;
}

Future<String> loadFile({String url, String path}) async {
  print('file loading started');
  final bytes = await _loadFileBytes(url);

  final file = File(path);

  await file.writeAsBytes(bytes);
  if (await file.exists()) {
    print(file.path);
    print('file loading ended');
    return file.path;
  } else {
    print('file not exist');
    throw Exception('file not exist');
  }
}

Future<String> getFilePath(String url) async {
  final dir = await getApplicationDocumentsDirectory();
  String fileName = url
      .replaceAll('/', '_')
      .replaceAll(':', '_')
      .replaceAll('%', '_')
      .replaceAll('?', '_')
      .replaceAll('?', '_');
  return '${dir.path}/$fileName';
}

Future<bool> isFileExist(String url) async {
  File file = File(await getFilePath(url));
  return file.exists();
}

Future<bool> deleteFile(String url) async {
  File file = File(await getFilePath(url));
  if (await file.exists()) {
    try {
      await file.delete();
      return true;
    } on Exception {
      return false;
    }
  } else {
    return true;
  }
}

Future deleteAllFilesFromDocumentsDirectory() async {
  final dir = await getApplicationDocumentsDirectory();
  String files = dir.list().toString();
  print(files);
  dir.deleteSync(recursive: true);
}

Future<bool> isInternetConnectionOk() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print('connected');
      return true;
    }
    else{
      return false;
    }
  } on SocketException catch (_) {
    print('not connected');
    return false;
  }
}

bool isUrlValid(String url) {
  try {
    Uri.parse(url);
    print('url is valid');
    return true;
  } on FormatException catch (_) {
    print('url is not valid');
    return false;
  }
}

Future<bool> isUrlAvailable(String url) async {
  try {
    final response = await head(Uri.parse(url));
    if (response.statusCode == 200) {
      print('url is available');
      return true;
    } else {
      print('url is not available');
      return false;
    }
  } on Exception catch (_) {
    print('url is not available');
    return false;
  }
}
