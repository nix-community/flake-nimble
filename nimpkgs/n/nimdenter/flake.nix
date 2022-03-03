{
  description = ''A tool for people who don't like Nim's indentation-based syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimdenter-master".type = "github";
  inputs."nimdenter-master".owner = "riinr";
  inputs."nimdenter-master".repo = "flake-nimble";
  inputs."nimdenter-master".ref = "flake-pinning";
  inputs."nimdenter-master".dir = "nimpkgs/n/nimdenter/master";
  inputs."nimdenter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdenter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimdenter-2022_1_7".type = "github";
  inputs."nimdenter-2022_1_7".owner = "riinr";
  inputs."nimdenter-2022_1_7".repo = "flake-nimble";
  inputs."nimdenter-2022_1_7".ref = "flake-pinning";
  inputs."nimdenter-2022_1_7".dir = "nimpkgs/n/nimdenter/2022_1_7";
  inputs."nimdenter-2022_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdenter-2022_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}