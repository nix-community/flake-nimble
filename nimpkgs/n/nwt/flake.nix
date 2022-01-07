{
  description = ''
    experiment to build a jinja like template parser
  '';
  inputs.src-nwt.url = "https://github.com/enthus1ast/nimWebTemplates";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
