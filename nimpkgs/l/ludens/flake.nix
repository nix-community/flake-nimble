{
  description = ''
    Little game library using opengl and sfml
  '';
  inputs.src-ludens.url = "https://github.com/rnentjes/nim-ludens";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
