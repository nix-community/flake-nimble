{
  description = ''Small demo Spry interpreters'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sprymicro-master.flake = false;
  inputs.src-sprymicro-master.type = "github";
  inputs.src-sprymicro-master.owner = "gokr";
  inputs.src-sprymicro-master.repo = "sprymicro";
  inputs.src-sprymicro-master.ref = "refs/heads/master";
  
  
  inputs."spryvm".type = "github";
  inputs."spryvm".owner = "riinr";
  inputs."spryvm".repo = "flake-nimble";
  inputs."spryvm".ref = "flake-pinning";
  inputs."spryvm".dir = "nimpkgs/s/spryvm";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sprymicro-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sprymicro-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sprymicro-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}