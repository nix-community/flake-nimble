{
  description = ''
    Bindings for libjwt
  '';
  inputs.src-libjwt.url = "https://github.com/nimscale/nim-libjwt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
