// lib/models/generator/generator_settings.dart

class GeneratorSettings {

  final int length;

  final bool uppercase;

  final bool lowercase;

  final bool numbers;

  final bool symbols;

  final bool avoidAmbiguous;



  const GeneratorSettings({

    required this.length,

    required this.uppercase,

    required this.lowercase,

    required this.numbers,

    required this.symbols,

    required this.avoidAmbiguous,

  });



  factory GeneratorSettings.defaults() {

    return const GeneratorSettings(

      length: 20,

      uppercase: true,

      lowercase: true,

      numbers: true,

      symbols: true,

      avoidAmbiguous: true,

    );
  }



  GeneratorSettings copyWith({

    int? length,

    bool? uppercase,

    bool? lowercase,

    bool? numbers,

    bool? symbols,

    bool? avoidAmbiguous,

  }) {

    return GeneratorSettings(

      length:
          length ?? this.length,

      uppercase:
          uppercase ?? this.uppercase,

      lowercase:
          lowercase ?? this.lowercase,

      numbers:
          numbers ?? this.numbers,

      symbols:
          symbols ?? this.symbols,

      avoidAmbiguous:
          avoidAmbiguous ?? this.avoidAmbiguous,

    );
  }
}