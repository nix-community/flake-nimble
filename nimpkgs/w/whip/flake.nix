{
  description = ''Whip is high performance web application server based on httpbeast a nest for redix tree based routing with some extra opmtizations.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."whip-master".type = "github";
  inputs."whip-master".owner = "riinr";
  inputs."whip-master".repo = "flake-nimble";
  inputs."whip-master".ref = "flake-pinning";
  inputs."whip-master".dir = "nimpkgs/w/whip/master";
  inputs."whip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."whip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."whip-0_2".type = "github";
  inputs."whip-0_2".owner = "riinr";
  inputs."whip-0_2".repo = "flake-nimble";
  inputs."whip-0_2".ref = "flake-pinning";
  inputs."whip-0_2".dir = "nimpkgs/w/whip/0_2";
  inputs."whip-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."whip-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}