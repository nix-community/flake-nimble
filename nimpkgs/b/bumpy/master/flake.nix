{
  description = ''2d collision library for Nim.'';
  inputs.src-bumpy-master.flake = false;
  inputs.src-bumpy-master.type = "github";
  inputs.src-bumpy-master.owner = "treeform";
  inputs.src-bumpy-master.repo = "bumpy";
  inputs.src-bumpy-master.ref = "refs/heads/master";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  outputs = { self, nixpkgs, src-bumpy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bumpy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bumpy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}