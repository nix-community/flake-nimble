{
  description = ''
    A very simple micro web framework
  '';
  inputs.src-mike.url = "https://github.com/ire4ever1190/mike";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
