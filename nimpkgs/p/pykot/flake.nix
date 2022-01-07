{
  description = ''
    Porting some Python / Kotlin features to Nim
  '';
  inputs.src-pykot.url = "https://github.com/jabbalaci/nimpykot";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
