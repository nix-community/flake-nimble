{
  description = ''
    A simple and lightweight terminal coloring library.
  '';
  inputs.src-colorize.url = "https://github.com/molnarmark/colorize";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
