{
  description = ''
    Library to more easily create X11 event loops
  '';
  inputs.src-xevloop.url = "https://github.com/PMunch/xevloop";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
