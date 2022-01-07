{
  description = ''
    Useful Variant Type and Powerful Pattern Matching for Nim
  '';
  inputs.src-matsuri.url = "https://github.com/zer0-star/matsuri";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
