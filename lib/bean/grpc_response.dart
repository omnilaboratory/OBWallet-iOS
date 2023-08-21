class GrpcResponse<T> {
  late int code;
  late String msg;
  late T? data;

  GrpcResponse({this.code = 0, this.msg = "", this.data});
}
