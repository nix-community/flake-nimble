{
  description = ''
    Wrapper for the markdown rendering hoedown library
  '';
  inputs.src-midnight_dynamite.url = "https://github.com/Araq/midnight_dynamite";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
