{
  description = ''Fonts, Typesetting and Rasterization.'';
  inputs.src-typography-v0_3_0.flake = false;
  inputs.src-typography-v0_3_0.type = "github";
  inputs.src-typography-v0_3_0.owner = "treeform";
  inputs.src-typography-v0_3_0.repo = "typography";
  inputs.src-typography-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."flippy".type = "github";
  inputs."flippy".owner = "riinr";
  inputs."flippy".repo = "flake-nimble";
  inputs."flippy".ref = "flake-pinning";
  inputs."flippy".dir = "nimpkgs/f/flippy";

  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."print".type = "github";
  inputs."print".owner = "riinr";
  inputs."print".repo = "flake-nimble";
  inputs."print".ref = "flake-pinning";
  inputs."print".dir = "nimpkgs/p/print";

  outputs = { self, nixpkgs, src-typography-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-typography-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-typography-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}