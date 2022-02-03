{
  description = ''Serializer and tools for flat binary files.'';
  inputs.src-flatty-0_1_5.flake = false;
  inputs.src-flatty-0_1_5.type = "github";
  inputs.src-flatty-0_1_5.owner = "treeform";
  inputs.src-flatty-0_1_5.repo = "flatty";
  inputs.src-flatty-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-flatty-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flatty-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}