{
  description = ''
    Nim macros to aid in object construction including event programming, and constructors.
  '';
  inputs.src-constructor.url = "https://github.com/beef331/constructor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
