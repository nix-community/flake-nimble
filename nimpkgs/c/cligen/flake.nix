{
  description = ''
    Infer & generate command-line interace/option/argument parsers
  '';
  inputs.src-cligen.url = "https://github.com/c-blake/cligen.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
