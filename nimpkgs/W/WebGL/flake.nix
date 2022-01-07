{
  description = ''
    Experimental wrapper to webgl for Nim
  '';
  inputs.src-WebGL.url = "https://github.com/stisa/webgl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
