{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-v0_1_22.flake = false;
  inputs.src-torch-v0_1_22.type = "github";
  inputs.src-torch-v0_1_22.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_22.repo = "nimtorch";
  inputs.src-torch-v0_1_22.ref = "refs/tags/v0.1.22";
  
  outputs = { self, nixpkgs, src-torch-v0_1_22, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-v0_1_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}