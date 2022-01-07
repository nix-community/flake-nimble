{
  description = ''
    Bindings to MacOS and iOS frameworks
  '';
  inputs.src-darwin.url = "https://github.com/yglukhov/darwin";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
