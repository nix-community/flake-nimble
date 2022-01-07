{
  description = ''
    RESTful URI router
  '';
  inputs.src-nest.url = "https://github.com/kedean/nest.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
