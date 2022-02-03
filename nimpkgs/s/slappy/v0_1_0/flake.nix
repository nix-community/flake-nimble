{
  description = ''A 3d sound API for nim.'';
  inputs.src-slappy-v0_1_0.flake = false;
  inputs.src-slappy-v0_1_0.type = "github";
  inputs.src-slappy-v0_1_0.owner = "treeform";
  inputs.src-slappy-v0_1_0.repo = "slappy";
  inputs.src-slappy-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-slappy-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slappy-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slappy-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}