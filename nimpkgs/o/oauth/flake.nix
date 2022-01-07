{
  description = ''
    OAuth library for nim
  '';
  inputs.src-oauth.url = "https://github.com/CORDEA/oauth";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
