{
  description = ''Everything you want to do with colors.'';
  inputs.src-chroma-0_1_1.flake = false;
  inputs.src-chroma-0_1_1.type = "github";
  inputs.src-chroma-0_1_1.owner = "treeform";
  inputs.src-chroma-0_1_1.repo = "chroma";
  inputs.src-chroma-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-chroma-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chroma-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}