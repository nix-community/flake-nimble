{
  description = ''
    a wrapper for the Canvas API
  '';
  inputs.src-jscanvas.url = "https://github.com/planetis-m/jscanvas";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
