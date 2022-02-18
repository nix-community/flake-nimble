{
  description = ''Additional functions for sequences that are not present in sequtils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sequtils2-master.flake = false;
  inputs.src-sequtils2-master.type = "github";
  inputs.src-sequtils2-master.owner = "Michedev";
  inputs.src-sequtils2-master.repo = "sequtils2";
  inputs.src-sequtils2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sequtils2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequtils2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sequtils2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}