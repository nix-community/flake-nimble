{
  description = ''
    Simple package for query HTML/XML elements using a CSS3 or jQuery-like selector syntax
  '';
  inputs.src-q.url = "https://github.com/OpenSystemsLab/q.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
