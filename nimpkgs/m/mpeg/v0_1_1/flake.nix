{
  description = ''Nim wrapper for pl_mpeg single header mpeg library.'';
  inputs.src-mpeg-v0_1_1.flake = false;
  inputs.src-mpeg-v0_1_1.type = "github";
  inputs.src-mpeg-v0_1_1.owner = "treeform";
  inputs.src-mpeg-v0_1_1.repo = "mpeg";
  inputs.src-mpeg-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-mpeg-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpeg-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpeg-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}