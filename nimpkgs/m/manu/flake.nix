{
  description = ''
    Matrix library
  '';
  inputs.src-manu.url = "https://github.com/planetis-m/manu";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
