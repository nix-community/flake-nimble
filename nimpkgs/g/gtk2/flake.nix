{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gtk2-master".type = "github";
  inputs."gtk2-master".owner = "riinr";
  inputs."gtk2-master".repo = "flake-nimble";
  inputs."gtk2-master".ref = "flake-pinning";
  inputs."gtk2-master".dir = "nimpkgs/g/gtk2/master";
  inputs."gtk2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gtk2-v1_0".type = "github";
  inputs."gtk2-v1_0".owner = "riinr";
  inputs."gtk2-v1_0".repo = "flake-nimble";
  inputs."gtk2-v1_0".ref = "flake-pinning";
  inputs."gtk2-v1_0".dir = "nimpkgs/g/gtk2/v1_0";
  inputs."gtk2-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gtk2-v1_2".type = "github";
  inputs."gtk2-v1_2".owner = "riinr";
  inputs."gtk2-v1_2".repo = "flake-nimble";
  inputs."gtk2-v1_2".ref = "flake-pinning";
  inputs."gtk2-v1_2".dir = "nimpkgs/g/gtk2/v1_2";
  inputs."gtk2-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gtk2-v1_3".type = "github";
  inputs."gtk2-v1_3".owner = "riinr";
  inputs."gtk2-v1_3".repo = "flake-nimble";
  inputs."gtk2-v1_3".ref = "flake-pinning";
  inputs."gtk2-v1_3".dir = "nimpkgs/g/gtk2/v1_3";
  inputs."gtk2-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}