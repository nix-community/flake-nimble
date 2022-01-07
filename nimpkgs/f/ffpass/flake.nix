{
  description = ''
    Api Calls for Ford vehicles equipped with the fordpass app.
  '';
  inputs.src-ffpass.url = "https://github.com/bunkford/ffpass";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
