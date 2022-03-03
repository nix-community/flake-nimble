{
  description = ''Wrapper for Heng Li's kseq'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."readfq-master".type = "github";
  inputs."readfq-master".owner = "riinr";
  inputs."readfq-master".repo = "flake-nimble";
  inputs."readfq-master".ref = "flake-pinning";
  inputs."readfq-master".dir = "nimpkgs/r/readfq/master";
  inputs."readfq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."readfq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."readfq-v0_1_1".type = "github";
  inputs."readfq-v0_1_1".owner = "riinr";
  inputs."readfq-v0_1_1".repo = "flake-nimble";
  inputs."readfq-v0_1_1".ref = "flake-pinning";
  inputs."readfq-v0_1_1".dir = "nimpkgs/r/readfq/v0_1_1";
  inputs."readfq-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."readfq-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}