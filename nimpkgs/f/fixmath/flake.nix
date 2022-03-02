{
  description = ''LibFixMath 16:16 fixed point support for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fixmath-master".type = "github";
  inputs."fixmath-master".owner = "riinr";
  inputs."fixmath-master".repo = "flake-nimble";
  inputs."fixmath-master".ref = "flake-pinning";
  inputs."fixmath-master".dir = "nimpkgs/f/fixmath/master";
  inputs."fixmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fixmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}