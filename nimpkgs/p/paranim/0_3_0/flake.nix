{
  description = ''A game library'';
  inputs.src-paranim-0_3_0.flake = false;
  inputs.src-paranim-0_3_0.type = "github";
  inputs.src-paranim-0_3_0.owner = "paranim";
  inputs.src-paranim-0_3_0.repo = "paranim";
  inputs.src-paranim-0_3_0.ref = "refs/tags/0.3.0";
  
  
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

  outputs = { self, nixpkgs, src-paranim-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paranim-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paranim-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}