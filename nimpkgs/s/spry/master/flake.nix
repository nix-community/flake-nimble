{
  description = ''A Smalltalk and Rebol inspired language implemented as an AST interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spry-master.flake = false;
  inputs.src-spry-master.type = "github";
  inputs.src-spry-master.owner = "gokr";
  inputs.src-spry-master.repo = "spry";
  inputs.src-spry-master.ref = "refs/heads/master";
  
  
  inputs."spryvm".type = "github";
  inputs."spryvm".owner = "riinr";
  inputs."spryvm".repo = "flake-nimble";
  inputs."spryvm".ref = "flake-pinning";
  inputs."spryvm".dir = "nimpkgs/s/spryvm";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spry-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}