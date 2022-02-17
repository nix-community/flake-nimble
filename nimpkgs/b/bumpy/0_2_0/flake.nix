{
  description = ''2d collision library for Nim.'';
  inputs.src-bumpy-0_2_0.flake = false;
  inputs.src-bumpy-0_2_0.type = "github";
  inputs.src-bumpy-0_2_0.owner = "treeform";
  inputs.src-bumpy-0_2_0.repo = "bumpy";
  inputs.src-bumpy-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  outputs = { self, nixpkgs, src-bumpy-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bumpy-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bumpy-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}