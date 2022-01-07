{
  description = ''
    preprod
  '';
  inputs.src-preprod.url = "https://github.com/j-a-s-d/preprod";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
