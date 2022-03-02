{
  description = ''Kinto Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kinto-master".type = "github";
  inputs."kinto-master".owner = "riinr";
  inputs."kinto-master".repo = "flake-nimble";
  inputs."kinto-master".ref = "flake-pinning";
  inputs."kinto-master".dir = "nimpkgs/k/kinto/master";
  inputs."kinto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kinto-0_2_0".type = "github";
  inputs."kinto-0_2_0".owner = "riinr";
  inputs."kinto-0_2_0".repo = "flake-nimble";
  inputs."kinto-0_2_0".ref = "flake-pinning";
  inputs."kinto-0_2_0".dir = "nimpkgs/k/kinto/0_2_0";
  inputs."kinto-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kinto-0_2_2".type = "github";
  inputs."kinto-0_2_2".owner = "riinr";
  inputs."kinto-0_2_2".repo = "flake-nimble";
  inputs."kinto-0_2_2".ref = "flake-pinning";
  inputs."kinto-0_2_2".dir = "nimpkgs/k/kinto/0_2_2";
  inputs."kinto-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}