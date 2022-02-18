{
  description = ''Simple benchmarking to time your code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-benchy-master.flake = false;
  inputs.src-benchy-master.type = "github";
  inputs.src-benchy-master.owner = "treeform";
  inputs.src-benchy-master.repo = "benchy";
  inputs.src-benchy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-benchy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-benchy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-benchy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}