{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfp-v0_4_2.flake = false;
  inputs.src-nimfp-v0_4_2.type = "github";
  inputs.src-nimfp-v0_4_2.owner = "vegansk";
  inputs.src-nimfp-v0_4_2.repo = "nimfp";
  inputs.src-nimfp-v0_4_2.ref = "refs/tags/v0.4.2";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}