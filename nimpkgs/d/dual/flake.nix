{
  description = ''
    Implementation of dual numbers
  '';
  inputs.src-dual.url = "https://github.com/drjdn/nim_dual";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
