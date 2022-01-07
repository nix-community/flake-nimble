{
  description = ''
    256 colors for shell
  '';
  inputs.src-rainbow.url = "https://github.com/Willyboar/rainbow";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
