{
  description = ''
    Simple window maker.
  '';
  inputs.src-siwin.url = "https://github.com/levovix0/siwin";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
