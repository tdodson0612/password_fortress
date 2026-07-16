// lib/services/encryption/aes_gcm_service.dart

import 'dart:convert';


import 'package:cryptography/cryptography.dart';


import '../../core/crypto/encryption_service.dart';



class AesGcmService
    implements EncryptionService {


  final algorithm =
      AesGcm.with256bits();



  @override
  Future<String> encrypt(
    String plainText,
    List<int> key,
  ) async {


    final secretBox =
        await algorithm.encrypt(
      utf8.encode(
        plainText,
      ),

      secretKey:
          SecretKey(
        key,
      ),
    );


    return base64Encode(
      secretBox.concatenation(),
    );
  }




  @override
  Future<String> decrypt(
    String encryptedText,
    List<int> key,
  ) async {


    final bytes =
        base64Decode(
      encryptedText,
    );


    final secretBox =
        SecretBox.fromConcatenation(
      bytes,

      nonceLength:
          algorithm.nonceLength,

      macLength:
          algorithm.macAlgorithm.macLength,
    );


    final clearText =
        await algorithm.decrypt(
      secretBox,

      secretKey:
          SecretKey(
        key,
      ),
    );


    return utf8.decode(
      clearText,
    );
  }
}