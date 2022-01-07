{
  description = ''
    nim wrapper around the AntTweakBar c library
  '';
  inputs.src-AntTweakBar.url = "https://github.com/krux02/nimAntTweakBar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
