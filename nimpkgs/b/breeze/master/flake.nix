{
  description = ''A dsl for writing macros in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-breeze-master.flake = false;
  inputs.src-breeze-master.type = "github";
  inputs.src-breeze-master.owner = "alehander42";
  inputs.src-breeze-master.repo = "breeze";
  inputs.src-breeze-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-breeze-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-breeze-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-breeze-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}