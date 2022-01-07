{
  description = ''
    Nim wrapper for libtess2
  '';
  inputs.src-nimtess2.url = "https://github.com/genotrance/nimtess2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
