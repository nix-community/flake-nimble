{
  description = ''A post-modern, "multi-dimensional" configurable ls/file lister'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lc-master".type = "github";
  inputs."lc-master".owner = "riinr";
  inputs."lc-master".repo = "flake-nimble";
  inputs."lc-master".ref = "flake-pinning";
  inputs."lc-master".dir = "nimpkgs/l/lc/master";
  inputs."lc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_2".type = "github";
  inputs."lc-v0_2".owner = "riinr";
  inputs."lc-v0_2".repo = "flake-nimble";
  inputs."lc-v0_2".ref = "flake-pinning";
  inputs."lc-v0_2".dir = "nimpkgs/l/lc/v0_2";
  inputs."lc-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_3".type = "github";
  inputs."lc-v0_3".owner = "riinr";
  inputs."lc-v0_3".repo = "flake-nimble";
  inputs."lc-v0_3".ref = "flake-pinning";
  inputs."lc-v0_3".dir = "nimpkgs/l/lc/v0_3";
  inputs."lc-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_4".type = "github";
  inputs."lc-v0_4".owner = "riinr";
  inputs."lc-v0_4".repo = "flake-nimble";
  inputs."lc-v0_4".ref = "flake-pinning";
  inputs."lc-v0_4".dir = "nimpkgs/l/lc/v0_4";
  inputs."lc-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_5".type = "github";
  inputs."lc-v0_5".owner = "riinr";
  inputs."lc-v0_5".repo = "flake-nimble";
  inputs."lc-v0_5".ref = "flake-pinning";
  inputs."lc-v0_5".dir = "nimpkgs/l/lc/v0_5";
  inputs."lc-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_6".type = "github";
  inputs."lc-v0_6".owner = "riinr";
  inputs."lc-v0_6".repo = "flake-nimble";
  inputs."lc-v0_6".ref = "flake-pinning";
  inputs."lc-v0_6".dir = "nimpkgs/l/lc/v0_6";
  inputs."lc-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_7".type = "github";
  inputs."lc-v0_7".owner = "riinr";
  inputs."lc-v0_7".repo = "flake-nimble";
  inputs."lc-v0_7".ref = "flake-pinning";
  inputs."lc-v0_7".dir = "nimpkgs/l/lc/v0_7";
  inputs."lc-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_8".type = "github";
  inputs."lc-v0_8".owner = "riinr";
  inputs."lc-v0_8".repo = "flake-nimble";
  inputs."lc-v0_8".ref = "flake-pinning";
  inputs."lc-v0_8".dir = "nimpkgs/l/lc/v0_8";
  inputs."lc-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_8_1".type = "github";
  inputs."lc-v0_8_1".owner = "riinr";
  inputs."lc-v0_8_1".repo = "flake-nimble";
  inputs."lc-v0_8_1".ref = "flake-pinning";
  inputs."lc-v0_8_1".dir = "nimpkgs/l/lc/v0_8_1";
  inputs."lc-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lc-v0_9_0".type = "github";
  inputs."lc-v0_9_0".owner = "riinr";
  inputs."lc-v0_9_0".repo = "flake-nimble";
  inputs."lc-v0_9_0".ref = "flake-pinning";
  inputs."lc-v0_9_0".dir = "nimpkgs/l/lc/v0_9_0";
  inputs."lc-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}