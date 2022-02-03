{
  description = ''ISO codes for Nim.'';
  inputs.src-isocodes-master.flake = false;
  inputs.src-isocodes-master.type = "github";
  inputs.src-isocodes-master.owner = "kraptor";
  inputs.src-isocodes-master.repo = "isocodes";
  inputs.src-isocodes-master.ref = "refs/heads/master";
  
  
  inputs."jsony".url = "path:../../../j/jsony";
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-isocodes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isocodes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isocodes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}