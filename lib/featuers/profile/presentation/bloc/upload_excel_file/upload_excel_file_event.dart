part of 'upload_excel_file_bloc.dart';

// import 'dart:io' as used;

@immutable
abstract class UploadExcelFileEvent {}

class UploadExcelEvent extends UploadExcelFileEvent {
  final String token;
  final used.File file;

  UploadExcelEvent(this.token, this.file);
}
