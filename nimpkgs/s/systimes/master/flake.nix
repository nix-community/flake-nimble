{
  description = ''An alternative DateTime implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-systimes-master.flake = false;
  inputs.src-systimes-master.type = "github";
  inputs.src-systimes-master.owner = "GULPF";
  inputs.src-systimes-master.repo = "systimes";
  inputs.src-systimes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-systimes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-systimes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-systimes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}