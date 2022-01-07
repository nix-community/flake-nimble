{
  description = ''
    ISAAC PRNG implementation on Nim
  '';
  inputs.src-isaac.url = "https://github.com/pragmagic/isaac/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
