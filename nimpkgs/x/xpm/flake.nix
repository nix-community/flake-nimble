{
  description = ''
    X-Pixmap & NetPBM
  '';
  inputs.src-xpm.url = "https://github.com/juancarlospaco/xpm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
