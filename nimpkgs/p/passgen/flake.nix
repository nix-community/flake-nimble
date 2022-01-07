{
  description = ''
    Password generation library in Nim
  '';
  inputs.src-passgen.url = "https://github.com/rustomax/nim-passgen";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
