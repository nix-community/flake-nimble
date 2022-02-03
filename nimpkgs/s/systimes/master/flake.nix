{
  description = ''An alternative DateTime implementation'';
  inputs.src-systimes-master.flake = false;
  inputs.src-systimes-master.type = "github";
  inputs.src-systimes-master.owner = "GULPF";
  inputs.src-systimes-master.repo = "systimes";
  inputs.src-systimes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-systimes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-systimes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-systimes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}