{
  description = ''
    A small library for writing cli programs in Nim.
  '';
  inputs.src-loki.url = "https://github.com/beshrkayali/loki";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
