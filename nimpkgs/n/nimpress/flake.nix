{
  description = ''
    Fast and simple calculation of polygenic scores
  '';
  inputs.src-nimpress.url = "https://github.com/mpinese/nimpress";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
