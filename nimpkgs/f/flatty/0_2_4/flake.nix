{
  description = ''Serializer and tools for flat binary files.'';
  inputs.src-flatty-0_2_4.flake = false;
  inputs.src-flatty-0_2_4.type = "github";
  inputs.src-flatty-0_2_4.owner = "treeform";
  inputs.src-flatty-0_2_4.repo = "flatty";
  inputs.src-flatty-0_2_4.ref = "refs/tags/0.2.4";
  
  outputs = { self, nixpkgs, src-flatty-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flatty-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}