{
  description = ''
    Prepared SQL statement generator. A lightweight ORM.
  '';
  inputs.src-ormin.url = "https://github.com/Araq/ormin";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
