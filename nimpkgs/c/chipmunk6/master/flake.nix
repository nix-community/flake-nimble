{
  description = ''Bindings for Chipmunk2D 6.x physics library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chipmunk6-master.flake = false;
  inputs.src-chipmunk6-master.type = "github";
  inputs.src-chipmunk6-master.owner = "fowlmouth";
  inputs.src-chipmunk6-master.repo = "nimrod-chipmunk";
  inputs.src-chipmunk6-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chipmunk6-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chipmunk6-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk6-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}