{
  description = ''Print-testing for nim.'';
  inputs.src-ptest-master.flake = false;
  inputs.src-ptest-master.type = "github";
  inputs.src-ptest-master.owner = "treeform";
  inputs.src-ptest-master.repo = "ptest";
  inputs.src-ptest-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ptest-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptest-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ptest-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}