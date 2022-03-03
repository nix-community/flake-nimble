{
  description = ''untitled shell history application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."usha-master".type = "github";
  inputs."usha-master".owner = "riinr";
  inputs."usha-master".repo = "flake-nimble";
  inputs."usha-master".ref = "flake-pinning";
  inputs."usha-master".dir = "nimpkgs/u/usha/master";
  inputs."usha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."usha-0_2".type = "github";
  inputs."usha-0_2".owner = "riinr";
  inputs."usha-0_2".repo = "flake-nimble";
  inputs."usha-0_2".ref = "flake-pinning";
  inputs."usha-0_2".dir = "nimpkgs/u/usha/0_2";
  inputs."usha-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usha-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}