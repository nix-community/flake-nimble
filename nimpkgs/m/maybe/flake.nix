{
  description = ''
    basic monadic maybe type for Nim
  '';
  inputs.src-maybe.url = "https://github.com/superfunc/maybe";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
