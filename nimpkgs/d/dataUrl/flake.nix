{
  description = ''
    Easily create data urls! CLI included
  '';
  inputs.src-dataUrl.url = "https://github.com/thisago/dataUrl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
