{
  description = ''2d collision library for Nim.'';
  inputs.src-bumpy-1_0_3.flake = false;
  inputs.src-bumpy-1_0_3.type = "github";
  inputs.src-bumpy-1_0_3.owner = "treeform";
  inputs.src-bumpy-1_0_3.repo = "bumpy";
  inputs.src-bumpy-1_0_3.ref = "refs/tags/1.0.3";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  outputs = { self, nixpkgs, src-bumpy-1_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bumpy-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bumpy-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}