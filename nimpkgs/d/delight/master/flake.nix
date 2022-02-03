{
  description = ''Engine-agnostic library for computing 2D raycasted lights'';
  inputs.src-delight-master.flake = false;
  inputs.src-delight-master.type = "github";
  inputs.src-delight-master.owner = "liquid600pgm";
  inputs.src-delight-master.repo = "delight";
  inputs.src-delight-master.ref = "refs/heads/master";
  
  
  inputs."glm".url = "path:../../../g/glm";
  inputs."glm".type = "github";
  inputs."glm".owner = "riinr";
  inputs."glm".repo = "flake-nimble";
  inputs."glm".ref = "flake-pinning";
  inputs."glm".dir = "nimpkgs/g/glm";

  outputs = { self, nixpkgs, src-delight-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-delight-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-delight-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}