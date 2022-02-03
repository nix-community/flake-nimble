{
  description = ''Bindings for Miniz lib.'';
  inputs.src-miniz-0_1_0.flake = false;
  inputs.src-miniz-0_1_0.type = "github";
  inputs.src-miniz-0_1_0.owner = "treeform";
  inputs.src-miniz-0_1_0.repo = "miniz";
  inputs.src-miniz-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-miniz-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-miniz-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-miniz-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}