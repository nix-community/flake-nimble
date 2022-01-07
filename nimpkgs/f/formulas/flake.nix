{
  description = ''
    Mathematical formulas
  '';
  inputs.src-formulas.url = "https://gitea.com/thisago/formulas.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
