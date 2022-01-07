{
  description = ''
    Nim bindings for p5.js.
  '';
  inputs.src-nimp5.url = "https://github.com/Foldover/nim-p5";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
