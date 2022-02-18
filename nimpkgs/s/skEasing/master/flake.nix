{
  description = ''A collection of easing curves for animation purposes.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-skEasing-master.flake = false;
  inputs.src-skEasing-master.type = "github";
  inputs.src-skEasing-master.owner = "Skrylar";
  inputs.src-skEasing-master.repo = "skEasing";
  inputs.src-skEasing-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-skEasing-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-skEasing-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-skEasing-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}