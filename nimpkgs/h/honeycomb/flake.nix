{
  description = ''
    A dead simple, no-nonsense parser combinator library written in pure Nim.
  '';
  inputs.src-honeycomb.url = "https://github.com/KatrinaKitten/honeycomb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
