{
  description = ''An OpenAL wrapper.'';
  inputs.src-openal-0_1_1.flake = false;
  inputs.src-openal-0_1_1.type = "github";
  inputs.src-openal-0_1_1.owner = "treeform";
  inputs.src-openal-0_1_1.repo = "openal";
  inputs.src-openal-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-openal-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openal-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openal-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}