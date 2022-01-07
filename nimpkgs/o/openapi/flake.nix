{
  description = ''
    OpenAPI Code Generator
  '';
  inputs.src-openapi.url = "https://github.com/disruptek/openapi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
