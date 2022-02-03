{
  description = ''A game library'';
  inputs.src-paranim-master.flake = false;
  inputs.src-paranim-master.type = "github";
  inputs.src-paranim-master.owner = "paranim";
  inputs.src-paranim-master.repo = "paranim";
  inputs.src-paranim-master.ref = "refs/heads/master";
  
  
  inputs."nimgl".url = "path:../../../n/nimgl";
  inputs."nimgl".type = "github";
  inputs."nimgl".owner = "riinr";
  inputs."nimgl".repo = "flake-nimble";
  inputs."nimgl".ref = "flake-pinning";
  inputs."nimgl".dir = "nimpkgs/n/nimgl";

  
  inputs."glm".url = "path:../../../g/glm";
  inputs."glm".type = "github";
  inputs."glm".owner = "riinr";
  inputs."glm".repo = "flake-nimble";
  inputs."glm".ref = "flake-pinning";
  inputs."glm".dir = "nimpkgs/g/glm";

  outputs = { self, nixpkgs, src-paranim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paranim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paranim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}