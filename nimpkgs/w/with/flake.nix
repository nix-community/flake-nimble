{
  description = ''
    Simple 'with' macro for Nim
  '';
  inputs.src-with.url = "https://github.com/zevv/with";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
