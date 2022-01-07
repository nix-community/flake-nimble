{
  description = ''
    A nimble package which provides user-defined types, procedures, etc...
  '';
  inputs.src-oolib.url = "https://github.com/Glasses-Neo/OOlib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
