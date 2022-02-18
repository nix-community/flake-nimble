{
  description = ''Nim CMAES library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimcmaes-master.flake = false;
  inputs.src-nimcmaes-master.type = "github";
  inputs.src-nimcmaes-master.owner = "zevv";
  inputs.src-nimcmaes-master.repo = "nimcmaes";
  inputs.src-nimcmaes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcmaes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcmaes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcmaes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}