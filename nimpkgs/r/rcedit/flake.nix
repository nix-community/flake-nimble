{
  description = ''
    A new awesome nimble package
  '';
  inputs.src-rcedit.url = "https://github.com/bung87/rcedit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
