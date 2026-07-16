// lib/services/security/key_derivation_service.dart

import 'dart:convert';
import 'dart:math';

import 'package:cryptography/cryptography.dart';


class KeyDerivationService {


  Future<List<int>> deriveKey(
    String masterPassword,
    List<int> salt,
  ) async {


    final algorithm =
        Argon2id(
      memory: 19456,
      parallelism: 1,
      iterations: 2,
      hashLength: 32,
    );


    final secretKey =
        await algorithm.deriveKey(
      secretKey:
          SecretKey(
        utf8.encode(
          masterPassword,
        ),
      ),

      nonce:
          salt,
    );


    return secretKey.extractBytes();
  }



  List<int> generateSalt() {

    final random =
        Random.secure();


    return List<int>.generate(
      16,
      (_) =>
          random.nextInt(256),
    );
  }
}