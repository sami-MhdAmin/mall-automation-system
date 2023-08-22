part of 'upload_excel_file_bloc.dart';

@immutable
abstract class UploadExcelFileEvent {}

class UploadExcelEvent extends UploadExcelFileEvent {
  final String token;
  final PlatformFile file;

  UploadExcelEvent(this.token, this.file);
}
