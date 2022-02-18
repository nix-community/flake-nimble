{
  description = ''Unroll for-loops at compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-unrolled-master.flake = false;
  inputs.src-unrolled-master.type = "github";
  inputs.src-unrolled-master.owner = "schneiderfelipe";
  inputs.src-unrolled-master.repo = "unrolled";
  inputs.src-unrolled-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unrolled-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unrolled-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unrolled-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}