{
  description = ''
    User-friendly wrapper for nim ast
  '';
  inputs.src-hnimast.url = "https://github.com/haxscramper/hnimast";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
