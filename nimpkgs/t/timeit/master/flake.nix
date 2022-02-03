{
  description = ''measuring execution times written in nim.'';
  inputs.src-timeit-master.flake = false;
  inputs.src-timeit-master.type = "github";
  inputs.src-timeit-master.owner = "xflywind";
  inputs.src-timeit-master.repo = "timeit";
  inputs.src-timeit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-timeit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timeit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}