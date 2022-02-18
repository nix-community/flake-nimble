{
  description = ''PF_RING wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pfring-master.flake = false;
  inputs.src-pfring-master.type = "github";
  inputs.src-pfring-master.owner = "ba0f3";
  inputs.src-pfring-master.repo = "pfring.nim";
  inputs.src-pfring-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pfring-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pfring-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pfring-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}