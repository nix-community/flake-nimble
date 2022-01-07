{
  description = ''
    Support for serialization of objects
  '';
  inputs.src-serializetools.url = "https://github.com/JeffersonLab/serializetools";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
