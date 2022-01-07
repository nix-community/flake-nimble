{
  description = ''
    zopflipng-like png optimization
  '';
  inputs.src-zopflipng.url = "https://github.com/bung87/zopflipng";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
