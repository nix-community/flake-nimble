{
  description = ''CUDA bindings'';
  inputs.src-nimcuda-master.flake = false;
  inputs.src-nimcuda-master.type = "github";
  inputs.src-nimcuda-master.owner = "andreaferretti";
  inputs.src-nimcuda-master.repo = "nimcuda";
  inputs.src-nimcuda-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcuda-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcuda-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcuda-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}