{
  description = ''
    Define bindings to JavaScript and Emscripten
  '';
  inputs.src-jsbind.url = "https://github.com/yglukhov/jsbind";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
