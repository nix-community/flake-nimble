{
  description = ''Text editor to speed up testing code snippets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."snip-master".type = "github";
  inputs."snip-master".owner = "riinr";
  inputs."snip-master".repo = "flake-nimble";
  inputs."snip-master".ref = "flake-pinning";
  inputs."snip-master".dir = "nimpkgs/s/snip/master";
  inputs."snip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."snip-v0_1_0".type = "github";
  inputs."snip-v0_1_0".owner = "riinr";
  inputs."snip-v0_1_0".repo = "flake-nimble";
  inputs."snip-v0_1_0".ref = "flake-pinning";
  inputs."snip-v0_1_0".dir = "nimpkgs/s/snip/v0_1_0";
  inputs."snip-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."snip-v0_2_0".type = "github";
  inputs."snip-v0_2_0".owner = "riinr";
  inputs."snip-v0_2_0".repo = "flake-nimble";
  inputs."snip-v0_2_0".ref = "flake-pinning";
  inputs."snip-v0_2_0".dir = "nimpkgs/s/snip/v0_2_0";
  inputs."snip-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."snip-v0_2_1".type = "github";
  inputs."snip-v0_2_1".owner = "riinr";
  inputs."snip-v0_2_1".repo = "flake-nimble";
  inputs."snip-v0_2_1".ref = "flake-pinning";
  inputs."snip-v0_2_1".dir = "nimpkgs/s/snip/v0_2_1";
  inputs."snip-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."snip-v0_2_2".type = "github";
  inputs."snip-v0_2_2".owner = "riinr";
  inputs."snip-v0_2_2".repo = "flake-nimble";
  inputs."snip-v0_2_2".ref = "flake-pinning";
  inputs."snip-v0_2_2".dir = "nimpkgs/s/snip/v0_2_2";
  inputs."snip-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."snip-v0_2_3".type = "github";
  inputs."snip-v0_2_3".owner = "riinr";
  inputs."snip-v0_2_3".repo = "flake-nimble";
  inputs."snip-v0_2_3".ref = "flake-pinning";
  inputs."snip-v0_2_3".dir = "nimpkgs/s/snip/v0_2_3";
  inputs."snip-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snip-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}