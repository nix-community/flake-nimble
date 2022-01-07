{
  description = ''
    A curses inspired simple cross-platform console library for Nim
  '';
  inputs.src-illwill.url = "https://github.com/johnnovak/illwill";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
