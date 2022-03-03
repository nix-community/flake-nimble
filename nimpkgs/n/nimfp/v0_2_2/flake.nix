{
  description = ''Nim functional programming library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimfp-v0_2_2.flake = false;
  inputs.src-nimfp-v0_2_2.type = "github";
  inputs.src-nimfp-v0_2_2.owner = "vegansk";
  inputs.src-nimfp-v0_2_2.repo = "nimfp";
  inputs.src-nimfp-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-nimfp-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimboost".type = "github";
  # inputs."nimboost".owner = "riinr";
  # inputs."nimboost".repo = "flake-nimble";
  # inputs."nimboost".ref = "flake-pinning";
  # inputs."nimboost".dir = "nimpkgs/n/nimboost";
  # inputs."nimboost".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimboost".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfp-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}