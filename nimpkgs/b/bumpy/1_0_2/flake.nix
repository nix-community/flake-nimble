{
  description = ''2d collision library for Nim.'';
  inputs.src-bumpy-1_0_2.flake = false;
  inputs.src-bumpy-1_0_2.type = "github";
  inputs.src-bumpy-1_0_2.owner = "treeform";
  inputs.src-bumpy-1_0_2.repo = "bumpy";
  inputs.src-bumpy-1_0_2.ref = "refs/tags/1.0.2";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  outputs = { self, nixpkgs, src-bumpy-1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bumpy-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bumpy-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}