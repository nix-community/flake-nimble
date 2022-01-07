{
  description = ''
    terminal ascii tables for nim
  '';
  inputs.src-asciitables.url = "https://github.com/xmonader/nim-asciitables";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
