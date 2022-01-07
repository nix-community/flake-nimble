{
  description = ''
    Create smooth GPU-accelerated animations that can be previewed live or rendered to videos.
  '';
  inputs.src-nanim.url = "https://github.com/ErikWDev/nanim/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
