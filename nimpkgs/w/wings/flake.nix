{
  description = ''
    A simple cross language struct and enum file generator.
  '';
  inputs.src-wings.url = "https://github.com/binhonglee/wings";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
