{
  description = ''
    `rm` files without fear
  '';
  inputs.src-crap.url = "https://github.com/icyphox/crap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
