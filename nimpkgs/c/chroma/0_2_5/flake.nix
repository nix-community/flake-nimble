{
  description = ''Everything you want to do with colors.'';
  inputs.src-chroma-0_2_5.flake = false;
  inputs.src-chroma-0_2_5.type = "github";
  inputs.src-chroma-0_2_5.owner = "treeform";
  inputs.src-chroma-0_2_5.repo = "chroma";
  inputs.src-chroma-0_2_5.ref = "refs/tags/0.2.5";
  
  outputs = { self, nixpkgs, src-chroma-0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chroma-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}