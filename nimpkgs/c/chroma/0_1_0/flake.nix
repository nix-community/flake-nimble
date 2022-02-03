{
  description = ''Everything you want to do with colors.'';
  inputs.src-chroma-0_1_0.flake = false;
  inputs.src-chroma-0_1_0.type = "github";
  inputs.src-chroma-0_1_0.owner = "treeform";
  inputs.src-chroma-0_1_0.repo = "chroma";
  inputs.src-chroma-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-chroma-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chroma-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}