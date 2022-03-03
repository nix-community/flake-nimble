{
  description = ''Bindings for Chipmunk2D 6.x physics library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-chipmunk6-master.flake = false;
  inputs.src-chipmunk6-master.type = "github";
  inputs.src-chipmunk6-master.owner = "fowlmouth";
  inputs.src-chipmunk6-master.repo = "nimrod-chipmunk";
  inputs.src-chipmunk6-master.ref = "refs/heads/master";
  inputs.src-chipmunk6-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chipmunk6-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chipmunk6-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk6-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}