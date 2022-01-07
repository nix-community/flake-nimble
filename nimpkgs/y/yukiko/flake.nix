{
  description = ''
    The Nim GUI asynchronous framework based on SDL2.
  '';
  inputs.src-yukiko.url = "https://github.com/ethosa/yukiko";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
