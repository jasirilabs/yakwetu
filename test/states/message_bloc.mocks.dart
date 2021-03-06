// Mocks generated by Mockito 5.0.15 from annotations
// in yakwetu/test/states/message_bloc.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:bloc/bloc.dart' as _i7;
import 'package:message_chat/message_chat.dart' as _i5;
import 'package:message_chat/src/models/message.dart' as _i2;
import 'package:message_chat/src/models/user.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:yakwetu/src/modules/chat_inbox/business_logic/message/message_bloc.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeMessage_0 extends _i1.Fake implements _i2.Message {}

class _FakeMessageState_1 extends _i1.Fake implements _i3.MessageState {}

class _FakeStreamSubscription_2<T> extends _i1.Fake
    implements _i4.StreamSubscription<T> {}

/// A class which mocks [IMessageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMessageService extends _i1.Mock implements _i5.IMessageService {
  MockIMessageService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Message> send(_i2.Message? message) =>
      (super.noSuchMethod(Invocation.method(#send, [message]),
              returnValue: Future<_i2.Message>.value(_FakeMessage_0()))
          as _i4.Future<_i2.Message>);
  @override
  _i4.Stream<_i2.Message> messages({_i6.User? activeUser}) => (super
      .noSuchMethod(Invocation.method(#messages, [], {#activeUser: activeUser}),
          returnValue: Stream<_i2.Message>.empty()) as _i4.Stream<_i2.Message>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [MessageBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockMessageBloc extends _i1.Mock implements _i3.MessageBloc {
  @override
  _i3.MessageState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakeMessageState_1()) as _i3.MessageState);
  @override
  _i4.Stream<_i3.MessageState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i3.MessageState>.empty())
          as _i4.Stream<_i3.MessageState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  _i4.Stream<_i3.MessageState> mapEventToState(_i3.MessageEvent? event) =>
      (super.noSuchMethod(Invocation.method(#mapEventToState, [event]),
              returnValue: Stream<_i3.MessageState>.empty())
          as _i4.Stream<_i3.MessageState>);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  void add(_i3.MessageEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i3.MessageEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.MessageEvent, _i3.MessageState>> transformEvents(
          _i4.Stream<_i3.MessageEvent>? events,
          _i7.TransitionFunction<_i3.MessageEvent, _i3.MessageState>?
              transitionFn) =>
      (super.noSuchMethod(
              Invocation.method(#transformEvents, [events, transitionFn]),
              returnValue: Stream<
                  _i7.Transition<_i3.MessageEvent, _i3.MessageState>>.empty())
          as _i4.Stream<_i7.Transition<_i3.MessageEvent, _i3.MessageState>>);
  @override
  void emit(_i3.MessageState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i7.Transition<_i3.MessageEvent, _i3.MessageState>? transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.MessageEvent, _i3.MessageState>>
      transformTransitions(
              _i4.Stream<_i7.Transition<_i3.MessageEvent, _i3.MessageState>>?
                  transitions) =>
          (super.noSuchMethod(
                  Invocation.method(#transformTransitions, [transitions]),
                  returnValue: Stream<
                      _i7.Transition<_i3.MessageEvent, _i3.MessageState>>.empty())
              as _i4
                  .Stream<_i7.Transition<_i3.MessageEvent, _i3.MessageState>>);
  @override
  _i4.StreamSubscription<_i3.MessageState> listen(
          void Function(_i3.MessageState)? onData,
          {Function? onError,
          void Function()? onDone,
          bool? cancelOnError}) =>
      (super.noSuchMethod(
              Invocation.method(#listen, [
                onData
              ], {
                #onError: onError,
                #onDone: onDone,
                #cancelOnError: cancelOnError
              }),
              returnValue: _FakeStreamSubscription_2<_i3.MessageState>())
          as _i4.StreamSubscription<_i3.MessageState>);
  @override
  void onChange(_i7.Change<_i3.MessageState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}
