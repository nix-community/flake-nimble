{
  description = ''
    JSON-Binding for deser
  '';
  inputs.src-deser_json.url = "https://github.com/gabbhack/deser_json";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
