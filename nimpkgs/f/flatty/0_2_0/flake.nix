{
  description = ''Serializer and tools for flat binary files.'';
  inputs.src-flatty-0_2_0.flake = false;
  inputs.src-flatty-0_2_0.type = "github";
  inputs.src-flatty-0_2_0.owner = "treeform";
  inputs.src-flatty-0_2_0.repo = "flatty";
  inputs.src-flatty-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-flatty-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flatty-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}