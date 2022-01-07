{
  description = ''
    A new awesome nimble package
  '';
  inputs.src-spacenimtraders.url = "https://github.com/ire4ever1190/SpaceNimTraders";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
