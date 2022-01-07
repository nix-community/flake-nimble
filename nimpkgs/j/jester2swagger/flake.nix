{
  description = ''
    Converts a file with Jester routes to Swagger JSON which can be imported in Postman.
  '';
  inputs.src-jester2swagger.url = "https://github.com/ThomasTJdev/jester2swagger";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
