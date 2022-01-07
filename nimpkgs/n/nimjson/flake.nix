{
  description = ''
    nimjson generates nim object definitions from json documents.
  '';
  inputs.src-nimjson.url = "https://github.com/jiro4989/nimjson";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
