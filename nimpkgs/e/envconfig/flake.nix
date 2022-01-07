{
  description = ''
    envconfig provides a function to get config objects from environment variables.
  '';
  inputs.src-envconfig.url = "https://github.com/jiro4989/envconfig";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
