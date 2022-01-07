{
  description = ''
    See pictures in your console
  '';
  inputs.src-imgcat.url = "https://github.com/not-lum/imgcat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
