{
  description = ''CUDA bindings'';
  inputs.src-nimcuda-0_1_6.flake = false;
  inputs.src-nimcuda-0_1_6.type = "github";
  inputs.src-nimcuda-0_1_6.owner = "andreaferretti";
  inputs.src-nimcuda-0_1_6.repo = "nimcuda";
  inputs.src-nimcuda-0_1_6.ref = "refs/tags/0.1.6";
  
  outputs = { self, nixpkgs, src-nimcuda-0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcuda-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcuda-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}