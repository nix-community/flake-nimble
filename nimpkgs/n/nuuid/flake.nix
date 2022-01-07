{
  description = ''
    A Nim source only UUID generator
  '';
  inputs.src-nuuid.url = "https://github.com/yglukhov/nim-only-uuid";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
