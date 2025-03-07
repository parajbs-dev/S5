// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class RustPlatform extends FlutterRustBridgeBase<RustWire> with FlutterRustBridgeSetupMixin {
  RustPlatform(FutureOr<WasmModule> dylib) : super(RustWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  Object api2wire_u64(int raw) {
    return castNativeBigInt(raw);
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external RustWasmModule get wasmModule;

@JS()
@anonymous
class RustWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external RustWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_encrypt_xchacha20poly1305(
      NativePortType port_, Uint8List key, Uint8List nonce, Uint8List plaintext);

  external dynamic /* void */ wire_decrypt_xchacha20poly1305(
      NativePortType port_, Uint8List key, Uint8List nonce, Uint8List ciphertext);

  external dynamic /* void */ wire_hash_blake3_file(NativePortType port_, String path);

  external dynamic /* void */ wire_hash_blake3(NativePortType port_, Uint8List input);

  external dynamic /* Uint8List */ wire_hash_blake3_sync(Uint8List input);

  external dynamic /* void */ wire_verify_integrity(
      NativePortType port_, Uint8List chunk_bytes, Object offset, Uint8List bao_outboard_bytes, Uint8List blake3_hash);

  external dynamic /* void */ wire_hash_bao_file(NativePortType port_, String path);

  external dynamic /* void */ wire_hash_bao_memory(NativePortType port_, Uint8List bytes);
}

// Section: WASM wire connector

class RustWire extends FlutterRustBridgeWasmWireBase<RustWasmModule> {
  RustWire(FutureOr<WasmModule> module) : super(WasmModule.cast<RustWasmModule>(module));

  void wire_encrypt_xchacha20poly1305(NativePortType port_, Uint8List key, Uint8List nonce, Uint8List plaintext) =>
      wasmModule.wire_encrypt_xchacha20poly1305(port_, key, nonce, plaintext);

  void wire_decrypt_xchacha20poly1305(NativePortType port_, Uint8List key, Uint8List nonce, Uint8List ciphertext) =>
      wasmModule.wire_decrypt_xchacha20poly1305(port_, key, nonce, ciphertext);

  void wire_hash_blake3_file(NativePortType port_, String path) => wasmModule.wire_hash_blake3_file(port_, path);

  void wire_hash_blake3(NativePortType port_, Uint8List input) => wasmModule.wire_hash_blake3(port_, input);

  dynamic /* Uint8List */ wire_hash_blake3_sync(Uint8List input) => wasmModule.wire_hash_blake3_sync(input);

  void wire_verify_integrity(NativePortType port_, Uint8List chunk_bytes, Object offset, Uint8List bao_outboard_bytes,
          Uint8List blake3_hash) =>
      wasmModule.wire_verify_integrity(port_, chunk_bytes, offset, bao_outboard_bytes, blake3_hash);

  void wire_hash_bao_file(NativePortType port_, String path) => wasmModule.wire_hash_bao_file(port_, path);

  void wire_hash_bao_memory(NativePortType port_, Uint8List bytes) => wasmModule.wire_hash_bao_memory(port_, bytes);
}
