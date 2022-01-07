{
  description = ''
    Wrapper for DigitalOcean HTTP API.
  '';
  inputs.src-digitalocean.url = "https://github.com/treeform/digitalocean";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
