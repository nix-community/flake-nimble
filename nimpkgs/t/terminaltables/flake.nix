{
  description = ''
    terminal tables
  '';
  inputs.src-terminaltables.url = "https://github.com/xmonader/nim-terminaltables";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
