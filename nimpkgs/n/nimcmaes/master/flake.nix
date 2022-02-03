{
  description = ''Nim CMAES library'';
  inputs.src-nimcmaes-master.flake = false;
  inputs.src-nimcmaes-master.type = "github";
  inputs.src-nimcmaes-master.owner = "zevv";
  inputs.src-nimcmaes-master.repo = "nimcmaes";
  inputs.src-nimcmaes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcmaes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcmaes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcmaes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}