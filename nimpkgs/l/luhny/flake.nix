{
  description = ''
    Luhn's Algorithm implementation in Nim
  '';
  inputs.src-luhny.url = "https://github.com/sigmapie8/luhny";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
