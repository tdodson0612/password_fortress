// lib/services/passkeys/passkey_service.dart

class PasskeyService {


  Future<bool> isSupported() async {

    /*
      Future implementation:

      WebAuthn / FIDO2

      iOS:
      - AuthenticationServices framework

      Android:
      - Credential Manager API

    */

    return false;
  }



  Future<void> createPasskey() async {

    /*
      Future native implementation.
    */
  }



  Future<void> authenticateWithPasskey() async {

    /*
      Future native implementation.
    */
  }
}