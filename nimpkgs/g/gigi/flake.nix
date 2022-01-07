{
  description = ''
    GitIgnore Generation Interface
  '';
  inputs.src-gigi.url = "https://github.com/attakei/gigi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
