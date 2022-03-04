{
  description = ''A Smalltalk and Rebol inspired language implemented as an AST interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-spry-master.flake = false;
  inputs.src-spry-master.type = "github";
  inputs.src-spry-master.owner = "gokr";
  inputs.src-spry-master.repo = "spry";
  inputs.src-spry-master.ref = "refs/heads/master";
  inputs.src-spry-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."spryvm".type = "github";
  inputs."spryvm".owner = "riinr";
  inputs."spryvm".repo = "flake-nimble";
  inputs."spryvm".ref = "flake-pinning";
  inputs."spryvm".dir = "nimpkgs/s/spryvm";
  inputs."spryvm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spryvm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spry-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}