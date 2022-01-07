{
  description = ''
    Nim Static Blog & Site Generator
  '';
  inputs.src-pine.url = "https://github.com/Willyboar/pine";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
