import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_counter/infrastructure/counter/remote/api/web_socket_client_api.dart';

final counterProvider = StreamProvider.family<int, int>((ref, start) {
  final wsClient = ref.watch(webSocketClientProvider);
  return wsClient.getCounterStream();
});
