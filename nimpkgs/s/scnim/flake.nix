{
  description = ''
    Develop SuperCollider UGens in Nim
  '';
  inputs.src-scnim.url = "https://github.com/capocasa/scnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
