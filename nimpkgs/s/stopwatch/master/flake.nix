{
  description = ''A simple timing library for benchmarking code and other things.'';
  inputs.src-stopwatch-master.flake = false;
  inputs.src-stopwatch-master.type = "gitlab";
  inputs.src-stopwatch-master.owner = "define-private-public";
  inputs.src-stopwatch-master.repo = "stopwatch";
  inputs.src-stopwatch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stopwatch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stopwatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stopwatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}