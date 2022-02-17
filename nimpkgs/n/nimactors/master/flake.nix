{
  description = ''Actors library for Nim inspired by akka-actors'';
  inputs.src-nimactors-master.flake = false;
  inputs.src-nimactors-master.type = "github";
  inputs.src-nimactors-master.owner = "vegansk";
  inputs.src-nimactors-master.repo = "nimactors";
  inputs.src-nimactors-master.ref = "refs/heads/master";
  
  
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  outputs = { self, nixpkgs, src-nimactors-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimactors-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimactors-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}