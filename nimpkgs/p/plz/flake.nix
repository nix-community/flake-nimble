{
  description = ''
    PLZ Python PIP alternative
  '';
  inputs.src-plz.url = "https://github.com/juancarlospaco/nim-pypi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
