{
  description = ''2D GPU rendering with a tiling atlas.'';
  inputs.src-boxy-0_1_0.flake = false;
  inputs.src-boxy-0_1_0.type = "github";
  inputs.src-boxy-0_1_0.owner = "treeform";
  inputs.src-boxy-0_1_0.repo = "boxy";
  inputs.src-boxy-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."pixie".url = "path:../../../p/pixie";
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  
  inputs."vmath".url = "path:../../../v/vmath";
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."opengl".url = "path:../../../o/opengl";
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  
  inputs."bitty".url = "path:../../../b/bitty";
  inputs."bitty".type = "github";
  inputs."bitty".owner = "riinr";
  inputs."bitty".repo = "flake-nimble";
  inputs."bitty".ref = "flake-pinning";
  inputs."bitty".dir = "nimpkgs/b/bitty";

  outputs = { self, nixpkgs, src-boxy-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-boxy-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-boxy-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}