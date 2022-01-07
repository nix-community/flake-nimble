{
  description = ''
    USA Code.Gov MultiSync API Client for Nim
  '';
  inputs.src-usagov.url = "https://github.com/juancarlospaco/nim-usagov";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
