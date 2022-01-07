{
  description = ''
    Template generator for gester
  '';
  inputs.src-nim_exodus.url = "https://github.com/shinriyo/nim_exodus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
