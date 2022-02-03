{
  description = ''Nim to GPU shader language compiler and supporting utilities.'';
  inputs.src-shady-master.flake = false;
  inputs.src-shady-master.type = "github";
  inputs.src-shady-master.owner = "treeform";
  inputs.src-shady-master.repo = "shady";
  inputs.src-shady-master.ref = "refs/heads/master";
  
  
  inputs."vmath".url = "path:../../../v/vmath";
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."pixie".url = "path:../../../p/pixie";
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  outputs = { self, nixpkgs, src-shady-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shady-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shady-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}