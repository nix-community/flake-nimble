{
  description = ''Actors library for Nim inspired by akka-actors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimactors-v0_1_0.flake = false;
  inputs.src-nimactors-v0_1_0.type = "github";
  inputs.src-nimactors-v0_1_0.owner = "vegansk";
  inputs.src-nimactors-v0_1_0.repo = "nimactors";
  inputs.src-nimactors-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimactors-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimactors-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimactors-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}