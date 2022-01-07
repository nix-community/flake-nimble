{
  description = ''
    A library for rendering text with paranim
  '';
  inputs.src-paratext.url = "https://github.com/paranim/paratext";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
