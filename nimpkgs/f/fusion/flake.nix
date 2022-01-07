{
  description = ''
    Nim's official stdlib extension
  '';
  inputs.src-fusion.url = "https://github.com/nim-lang/fusion";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
