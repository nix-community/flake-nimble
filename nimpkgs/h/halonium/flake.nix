{
  description = ''
    A browser automation library written in Nim
  '';
  inputs.src-halonium.url = "https://github.com/halonium/halonium";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
