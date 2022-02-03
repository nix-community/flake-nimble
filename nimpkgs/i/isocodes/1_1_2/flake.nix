{
  description = ''ISO codes for Nim.'';
  inputs.src-isocodes-1_1_2.flake = false;
  inputs.src-isocodes-1_1_2.type = "github";
  inputs.src-isocodes-1_1_2.owner = "kraptor";
  inputs.src-isocodes-1_1_2.repo = "isocodes";
  inputs.src-isocodes-1_1_2.ref = "refs/tags/1.1.2";
  
  
  inputs."jsony".url = "path:../../../j/jsony";
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-isocodes-1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isocodes-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isocodes-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}