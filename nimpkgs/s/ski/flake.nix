{
  description = ''
    ski is library for SKI combinator.
  '';
  inputs.src-ski.url = "https://github.com/jiro4989/ski";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
