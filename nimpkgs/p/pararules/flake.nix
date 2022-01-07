{
  description = ''
    A rules engine
  '';
  inputs.src-pararules.url = "https://github.com/paranim/pararules";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
