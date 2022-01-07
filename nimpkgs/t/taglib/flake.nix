{
  description = ''
    TagLib Audio Meta-Data Library wrapper
  '';
  inputs.src-taglib.url = "https://github.com/alex-laskin/nim-taglib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
