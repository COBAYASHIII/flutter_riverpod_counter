import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_counter/infrastructure/counter/remote/model/web_socket_client.dart';

final webSocketClientProvider = Provider<WebsocketClient>((ref) {
  return FakeWebsocketClient();
});

class FakeWebsocketClient implements WebsocketClient {
  @override
  Stream<int> getCounterStream([int start = 0]) async* {
    int i = start;
    while (true) {
      yield i++;
      await Future.delayed(const Duration(milliseconds: 500));
    }
  }
}
