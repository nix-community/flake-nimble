{
  description = ''
    Nim ORM.
  '';
  inputs.src-norm.url = "https://github.com/moigagoo/norm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
