{
  description = ''
    Nim library for shared types
  '';
  inputs.src-shared.url = "https://github.com/genotrance/shared";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
