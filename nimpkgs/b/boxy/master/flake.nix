{
  description = ''2D GPU rendering with a tiling atlas.'';
  inputs.src-boxy-master.flake = false;
  inputs.src-boxy-master.type = "github";
  inputs.src-boxy-master.owner = "treeform";
  inputs.src-boxy-master.repo = "boxy";
  inputs.src-boxy-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-boxy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-boxy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-boxy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}