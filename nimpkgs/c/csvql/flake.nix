{
  description = ''
    csvql.
  '';
  inputs.src-csvql.url = "https://github.com/Bennyelg/csvql";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
