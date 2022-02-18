{
  description = ''2D GPU rendering with a tiling atlas.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-boxy-0_3_4.flake = false;
  inputs.src-boxy-0_3_4.type = "github";
  inputs.src-boxy-0_3_4.owner = "treeform";
  inputs.src-boxy-0_3_4.repo = "boxy";
  inputs.src-boxy-0_3_4.ref = "refs/tags/0.3.4";
  
  
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  
  inputs."bitty".type = "github";
  inputs."bitty".owner = "riinr";
  inputs."bitty".repo = "flake-nimble";
  inputs."bitty".ref = "flake-pinning";
  inputs."bitty".dir = "nimpkgs/b/bitty";

  outputs = { self, nixpkgs, flakeNimbleLib, src-boxy-0_3_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-boxy-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-boxy-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}