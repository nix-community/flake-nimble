{
  description = ''Small demo Spry interpreters'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sprymicro-master.flake = false;
  inputs.src-sprymicro-master.type = "github";
  inputs.src-sprymicro-master.owner = "gokr";
  inputs.src-sprymicro-master.repo = "sprymicro";
  inputs.src-sprymicro-master.ref = "refs/heads/master";
  inputs.src-sprymicro-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."spryvm".type = "github";
  inputs."spryvm".owner = "riinr";
  inputs."spryvm".repo = "flake-nimble";
  inputs."spryvm".ref = "flake-pinning";
  inputs."spryvm".dir = "nimpkgs/s/spryvm";
  inputs."spryvm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spryvm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sprymicro-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sprymicro-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sprymicro-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}