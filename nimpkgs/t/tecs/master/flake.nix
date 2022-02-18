{
  description = ''Simple ECS implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tecs-master.flake = false;
  inputs.src-tecs-master.type = "github";
  inputs.src-tecs-master.owner = "Timofffee";
  inputs.src-tecs-master.repo = "tecs.nim";
  inputs.src-tecs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tecs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tecs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tecs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}