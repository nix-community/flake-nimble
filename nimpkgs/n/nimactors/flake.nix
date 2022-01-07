{
  description = ''
    Actors library for Nim inspired by akka-actors
  '';
  inputs.src-nimactors.url = "https://github.com/vegansk/nimactors";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
