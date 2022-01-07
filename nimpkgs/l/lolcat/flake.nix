{
  description = ''
    lolcat implementation in Nim
  '';
  inputs.src-lolcat.url = "https://github.com/OHermesJunior/lolcat.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
