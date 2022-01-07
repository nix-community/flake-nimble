{
  description = ''
    X-Plane XPLM SDK wrapper
  '';
  inputs.src-XPLM-Nim.url = "https://github.com/jpoirier/XPLM-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
