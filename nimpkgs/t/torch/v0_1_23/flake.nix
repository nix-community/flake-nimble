{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-v0_1_23.flake = false;
  inputs.src-torch-v0_1_23.type = "github";
  inputs.src-torch-v0_1_23.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_23.repo = "nimtorch";
  inputs.src-torch-v0_1_23.ref = "refs/tags/v0.1.23";
  
  outputs = { self, nixpkgs, src-torch-v0_1_23, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_23;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-v0_1_23"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}