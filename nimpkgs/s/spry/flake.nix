{
  description = ''A Smalltalk and Rebol inspired language implemented as an AST interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."spry-master".type = "github";
  inputs."spry-master".owner = "riinr";
  inputs."spry-master".repo = "flake-nimble";
  inputs."spry-master".ref = "flake-pinning";
  inputs."spry-master".dir = "nimpkgs/s/spry/master";
  inputs."spry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}