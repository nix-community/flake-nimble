{
  description = ''Everything you want to do with colors.'';
  inputs.src-chroma-0_2_3.flake = false;
  inputs.src-chroma-0_2_3.type = "github";
  inputs.src-chroma-0_2_3.owner = "treeform";
  inputs.src-chroma-0_2_3.repo = "chroma";
  inputs.src-chroma-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-chroma-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chroma-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}