{
  description = ''
    Single Page Documentation Generator
  '';
  inputs.src-hotdoc.url = "https://github.com/willyboar/hotdoc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
