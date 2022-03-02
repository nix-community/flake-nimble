{
  description = ''Simple package for query HTML/XML elements using a CSS3 or jQuery-like selector syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."q-master".type = "github";
  inputs."q-master".owner = "riinr";
  inputs."q-master".repo = "flake-nimble";
  inputs."q-master".ref = "flake-pinning";
  inputs."q-master".dir = "nimpkgs/q/q/master";
  inputs."q-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."q-0_0_2".type = "github";
  inputs."q-0_0_2".owner = "riinr";
  inputs."q-0_0_2".repo = "flake-nimble";
  inputs."q-0_0_2".ref = "flake-pinning";
  inputs."q-0_0_2".dir = "nimpkgs/q/q/0_0_2";
  inputs."q-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."q-0_0_3".type = "github";
  inputs."q-0_0_3".owner = "riinr";
  inputs."q-0_0_3".repo = "flake-nimble";
  inputs."q-0_0_3".ref = "flake-pinning";
  inputs."q-0_0_3".dir = "nimpkgs/q/q/0_0_3";
  inputs."q-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."q-0_0_4".type = "github";
  inputs."q-0_0_4".owner = "riinr";
  inputs."q-0_0_4".repo = "flake-nimble";
  inputs."q-0_0_4".ref = "flake-pinning";
  inputs."q-0_0_4".dir = "nimpkgs/q/q/0_0_4";
  inputs."q-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."q-0_0_5".type = "github";
  inputs."q-0_0_5".owner = "riinr";
  inputs."q-0_0_5".repo = "flake-nimble";
  inputs."q-0_0_5".ref = "flake-pinning";
  inputs."q-0_0_5".dir = "nimpkgs/q/q/0_0_5";
  inputs."q-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."q-0_0_6".type = "github";
  inputs."q-0_0_6".owner = "riinr";
  inputs."q-0_0_6".repo = "flake-nimble";
  inputs."q-0_0_6".ref = "flake-pinning";
  inputs."q-0_0_6".dir = "nimpkgs/q/q/0_0_6";
  inputs."q-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."q-0_0_7".type = "github";
  inputs."q-0_0_7".owner = "riinr";
  inputs."q-0_0_7".repo = "flake-nimble";
  inputs."q-0_0_7".ref = "flake-pinning";
  inputs."q-0_0_7".dir = "nimpkgs/q/q/0_0_7";
  inputs."q-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."q-0_0_8".type = "github";
  inputs."q-0_0_8".owner = "riinr";
  inputs."q-0_0_8".repo = "flake-nimble";
  inputs."q-0_0_8".ref = "flake-pinning";
  inputs."q-0_0_8".dir = "nimpkgs/q/q/0_0_8";
  inputs."q-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}