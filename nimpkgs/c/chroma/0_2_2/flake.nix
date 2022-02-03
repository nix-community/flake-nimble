{
  description = ''Everything you want to do with colors.'';
  inputs.src-chroma-0_2_2.flake = false;
  inputs.src-chroma-0_2_2.type = "github";
  inputs.src-chroma-0_2_2.owner = "treeform";
  inputs.src-chroma-0_2_2.repo = "chroma";
  inputs.src-chroma-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-chroma-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chroma-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}