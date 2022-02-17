{
  description = ''Fonts, Typesetting and Rasterization.'';
  inputs.src-typography-0_6_0.flake = false;
  inputs.src-typography-0_6_0.type = "github";
  inputs.src-typography-0_6_0.owner = "treeform";
  inputs.src-typography-0_6_0.repo = "typography";
  inputs.src-typography-0_6_0.ref = "refs/tags/0.6.0";
  
  
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

  outputs = { self, nixpkgs, src-typography-0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-typography-0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-typography-0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}