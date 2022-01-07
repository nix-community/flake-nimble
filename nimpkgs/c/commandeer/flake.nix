{
  description = ''
    Provides a small command line parsing DSL (domain specific language)
  '';
  inputs.src-commandeer.url = "https://github.com/fenekku/commandeer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
