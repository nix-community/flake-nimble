{
  description = ''
    A high-performance ini parse library for nim.
  '';
  inputs.src-parseini.url = "https://github.com/lihf8515/parseini";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
