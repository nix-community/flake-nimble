{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cairo-master".type = "github";
  inputs."cairo-master".owner = "riinr";
  inputs."cairo-master".repo = "flake-nimble";
  inputs."cairo-master".ref = "flake-pinning";
  inputs."cairo-master".dir = "nimpkgs/c/cairo/master";
  inputs."cairo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cairo-1_1_0".type = "github";
  inputs."cairo-1_1_0".owner = "riinr";
  inputs."cairo-1_1_0".repo = "flake-nimble";
  inputs."cairo-1_1_0".ref = "flake-pinning";
  inputs."cairo-1_1_0".dir = "nimpkgs/c/cairo/1_1_0";
  inputs."cairo-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cairo-1_1_1".type = "github";
  inputs."cairo-1_1_1".owner = "riinr";
  inputs."cairo-1_1_1".repo = "flake-nimble";
  inputs."cairo-1_1_1".ref = "flake-pinning";
  inputs."cairo-1_1_1".dir = "nimpkgs/c/cairo/1_1_1";
  inputs."cairo-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}