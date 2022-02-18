{
  description = ''A simple progress bar for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-progress-master.flake = false;
  inputs.src-progress-master.type = "github";
  inputs.src-progress-master.owner = "euantorano";
  inputs.src-progress-master.repo = "progress.nim";
  inputs.src-progress-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-progress-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-progress-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-progress-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}