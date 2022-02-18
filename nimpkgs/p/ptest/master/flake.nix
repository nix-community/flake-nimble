{
  description = ''Print-testing for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ptest-master.flake = false;
  inputs.src-ptest-master.type = "github";
  inputs.src-ptest-master.owner = "treeform";
  inputs.src-ptest-master.repo = "ptest";
  inputs.src-ptest-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ptest-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptest-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ptest-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}