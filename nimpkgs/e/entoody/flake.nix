{
  description = ''
    A component/entity system
  '';
  inputs.src-entoody.url = "https://bitbucket.org/fowlmouth/entoody";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
