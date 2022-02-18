{
  description = ''A collection of easing curves for animation purposes.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-skeasing-master.flake = false;
  inputs.src-skeasing-master.type = "github";
  inputs.src-skeasing-master.owner = "Skrylar";
  inputs.src-skeasing-master.repo = "skEasing";
  inputs.src-skeasing-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-skeasing-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-skeasing-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-skeasing-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}