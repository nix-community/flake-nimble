{
  description = ''Serializer and tools for flat binary files.'';
  inputs.src-flatty-0_2_2.flake = false;
  inputs.src-flatty-0_2_2.type = "github";
  inputs.src-flatty-0_2_2.owner = "treeform";
  inputs.src-flatty-0_2_2.repo = "flatty";
  inputs.src-flatty-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-flatty-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flatty-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}