{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-v0_2_2.flake = false;
  inputs.src-torch-v0_2_2.type = "github";
  inputs.src-torch-v0_2_2.owner = "fragcolor-xyz";
  inputs.src-torch-v0_2_2.repo = "nimtorch";
  inputs.src-torch-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."fragments".url = "path:../../../f/fragments";
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";

  outputs = { self, nixpkgs, src-torch-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}