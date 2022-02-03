{
  description = ''Simple ECS implementation for Nim'';
  inputs.src-tecs-v0_1.flake = false;
  inputs.src-tecs-v0_1.type = "github";
  inputs.src-tecs-v0_1.owner = "Timofffee";
  inputs.src-tecs-v0_1.repo = "tecs.nim";
  inputs.src-tecs-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, src-tecs-v0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tecs-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tecs-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}