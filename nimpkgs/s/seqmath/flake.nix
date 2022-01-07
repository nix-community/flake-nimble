{
  description = ''
    Nim math library for sequences and nested sequences (extends math library)
  '';
  inputs.src-seqmath.url = "https://github.com/jlp765/seqmath";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
