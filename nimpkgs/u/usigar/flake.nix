{
  description = ''
    USIG Argentina Government MultiSync API Client for Nim
  '';
  inputs.src-usigar.url = "https://github.com/juancarlospaco/nim-usigar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
