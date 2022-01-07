{
  description = ''
    Simple plugin implementation
  '';
  inputs.src-pluginmanager.url = "https://github.com/samdmarshall/plugin-manager";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
