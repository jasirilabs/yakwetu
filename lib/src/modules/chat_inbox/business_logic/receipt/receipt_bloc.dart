import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:message_chat/message_chat.dart';

part 'receipt_events.dart';
part 'receipt_states.dart';

class ReceiptBloc extends Bloc<ReceiptEvent, ReceiptState> {
  final IReceiptService _receiptService;
  StreamSubscription? _subscription;

  ReceiptBloc(this._receiptService) : super(ReceiptState.initial());

  @override
  Stream<ReceiptState> mapEventToState(ReceiptEvent event) async* {
    if (event is Subscribed) {
      await _subscription?.cancel();
      _subscription = _receiptService
          .receipts(event.user)
          .listen((receipt) => add(_ReceiptReceived(receipt)));
    }

    if (event is _ReceiptReceived) {
      yield ReceiptState.received(event.receipt);
    }
    if (event is ReceiptSent) {
      await _receiptService.send(event.receipt);
      yield ReceiptState.sent(event.receipt);
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    _receiptService.dispose();
    return super.close();
  }
}
