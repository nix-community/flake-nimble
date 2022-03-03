{
  description = ''Simple linear algebra for nim. Js too.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."snail-master".type = "github";
  inputs."snail-master".owner = "riinr";
  inputs."snail-master".repo = "flake-nimble";
  inputs."snail-master".ref = "flake-pinning";
  inputs."snail-master".dir = "nimpkgs/s/snail/master";
  inputs."snail-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snail-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."snail-0_2_0".type = "github";
  inputs."snail-0_2_0".owner = "riinr";
  inputs."snail-0_2_0".repo = "flake-nimble";
  inputs."snail-0_2_0".ref = "flake-pinning";
  inputs."snail-0_2_0".dir = "nimpkgs/s/snail/0_2_0";
  inputs."snail-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snail-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}