{
  description = ''
    The Fast-Light Tool Kit
  '';
  inputs.src-fltk.url = "https://github.com/Skrylar/nfltk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
