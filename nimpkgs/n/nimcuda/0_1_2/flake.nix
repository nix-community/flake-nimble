{
  description = ''CUDA bindings'';
  inputs.src-nimcuda-0_1_2.flake = false;
  inputs.src-nimcuda-0_1_2.type = "github";
  inputs.src-nimcuda-0_1_2.owner = "andreaferretti";
  inputs.src-nimcuda-0_1_2.repo = "nimcuda";
  inputs.src-nimcuda-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-nimcuda-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcuda-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcuda-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}