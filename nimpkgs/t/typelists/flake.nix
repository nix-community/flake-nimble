{
  description = ''
    Typelists in Nim
  '';
  inputs.src-typelists.url = "https://github.com/yglukhov/typelists";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
