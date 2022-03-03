{
  description = ''Time travelling for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."timecop-master".type = "github";
  inputs."timecop-master".owner = "riinr";
  inputs."timecop-master".repo = "flake-nimble";
  inputs."timecop-master".ref = "flake-pinning";
  inputs."timecop-master".dir = "nimpkgs/t/timecop/master";
  inputs."timecop-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timecop-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timecop-0_1_0".type = "github";
  inputs."timecop-0_1_0".owner = "riinr";
  inputs."timecop-0_1_0".repo = "flake-nimble";
  inputs."timecop-0_1_0".ref = "flake-pinning";
  inputs."timecop-0_1_0".dir = "nimpkgs/t/timecop/0_1_0";
  inputs."timecop-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timecop-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}