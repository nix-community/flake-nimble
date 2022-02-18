{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chipmunk7-master.flake = false;
  inputs.src-chipmunk7-master.type = "github";
  inputs.src-chipmunk7-master.owner = "avahe-kellenberger";
  inputs.src-chipmunk7-master.repo = "nim-chipmunk";
  inputs.src-chipmunk7-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chipmunk7-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chipmunk7-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk7-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}