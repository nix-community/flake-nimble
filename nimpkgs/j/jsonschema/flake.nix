{
  description = ''
    JSON schema validation and creation.
  '';
  inputs.src-jsonschema.url = "https://github.com/PMunch/jsonschema";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
