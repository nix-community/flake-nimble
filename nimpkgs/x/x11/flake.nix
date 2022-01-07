{
  description = ''
    Wrapper for X11
  '';
  inputs.src-x11.url = "https://github.com/nim-lang/x11";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
