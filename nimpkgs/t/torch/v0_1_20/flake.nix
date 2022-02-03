{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-v0_1_20.flake = false;
  inputs.src-torch-v0_1_20.type = "github";
  inputs.src-torch-v0_1_20.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_20.repo = "nimtorch";
  inputs.src-torch-v0_1_20.ref = "refs/tags/v0.1.20";
  
  outputs = { self, nixpkgs, src-torch-v0_1_20, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-v0_1_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}