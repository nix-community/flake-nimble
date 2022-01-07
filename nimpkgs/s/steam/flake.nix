{
  description = ''
    Steam API Client for Nim
  '';
  inputs.src-steam.url = "https://github.com/juancarlospaco/nim-steam";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
