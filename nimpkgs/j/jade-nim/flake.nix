{
  description = ''Compiles jade templates to Nim procedures.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jade-nim-master".type = "github";
  inputs."jade-nim-master".owner = "riinr";
  inputs."jade-nim-master".repo = "flake-nimble";
  inputs."jade-nim-master".ref = "flake-pinning";
  inputs."jade-nim-master".dir = "nimpkgs/j/jade-nim/master";
  inputs."jade-nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jade-nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}