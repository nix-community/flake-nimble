{
  description = ''
    Color and utilities library for linux terminal.
  '';
  inputs.src-nimcx.url = "https://github.com/qqtop/nimcx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
