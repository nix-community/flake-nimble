{
  description = ''For karax html preview.'';
  inputs.src-kview-master.flake = false;
  inputs.src-kview-master.type = "github";
  inputs.src-kview-master.owner = "planety";
  inputs.src-kview-master.repo = "kview";
  inputs.src-kview-master.ref = "refs/heads/master";
  
  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  outputs = { self, nixpkgs, src-kview-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kview-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kview-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}