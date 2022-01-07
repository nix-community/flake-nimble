{
  description = ''
    Iterator library for Nim
  '';
  inputs.src-lazy.url = "https://github.com/petermora/nimLazy/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
