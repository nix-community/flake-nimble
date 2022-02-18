{
  description = ''A web DSL for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rosencrantz-master.flake = false;
  inputs.src-rosencrantz-master.type = "github";
  inputs.src-rosencrantz-master.owner = "andreaferretti";
  inputs.src-rosencrantz-master.repo = "rosencrantz";
  inputs.src-rosencrantz-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rosencrantz-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}