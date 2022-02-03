{
  description = ''Simple ECS implementation for Nim'';
  inputs.src-tecs-master.flake = false;
  inputs.src-tecs-master.type = "github";
  inputs.src-tecs-master.owner = "Timofffee";
  inputs.src-tecs-master.repo = "tecs.nim";
  inputs.src-tecs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tecs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tecs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tecs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}