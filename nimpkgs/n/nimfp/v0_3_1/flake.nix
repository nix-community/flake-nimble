{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfp-v0_3_1.flake = false;
  inputs.src-nimfp-v0_3_1.type = "github";
  inputs.src-nimfp-v0_3_1.owner = "vegansk";
  inputs.src-nimfp-v0_3_1.repo = "nimfp";
  inputs.src-nimfp-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  
  inputs."classy".type = "github";
  inputs."classy".owner = "riinr";
  inputs."classy".repo = "flake-nimble";
  inputs."classy".ref = "flake-pinning";
  inputs."classy".dir = "nimpkgs/c/classy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}