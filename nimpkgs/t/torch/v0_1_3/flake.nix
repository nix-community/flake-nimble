{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-v0_1_3.flake = false;
  inputs.src-torch-v0_1_3.type = "github";
  inputs.src-torch-v0_1_3.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_3.repo = "nimtorch";
  inputs.src-torch-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."fragments".url = "path:../../../f/fragments";
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";

  outputs = { self, nixpkgs, src-torch-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}