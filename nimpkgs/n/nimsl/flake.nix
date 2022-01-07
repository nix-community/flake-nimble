{
  description = ''
    Shaders in Nim.
  '';
  inputs.src-nimsl.url = "https://github.com/yglukhov/nimsl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
