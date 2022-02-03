{
  description = ''Everything you want to do with colors.'';
  inputs.src-chroma-master.flake = false;
  inputs.src-chroma-master.type = "github";
  inputs.src-chroma-master.owner = "treeform";
  inputs.src-chroma-master.repo = "chroma";
  inputs.src-chroma-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-chroma-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chroma-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}