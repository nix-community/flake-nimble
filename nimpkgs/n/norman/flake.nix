{
  description = ''
    Migration manager for Norm.
  '';
  inputs.src-norman.url = "https://github.com/moigagoo/norman";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
