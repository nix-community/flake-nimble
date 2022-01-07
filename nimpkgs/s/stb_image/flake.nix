{
  description = ''
    A wrapper for stb_image and stb_image_write.
  '';
  inputs.src-stb_image.url = "https://gitlab.com/define-private-public/stb_image-Nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
