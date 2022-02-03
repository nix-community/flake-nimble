{
  description = ''Fonts, Typesetting and Rasterization.'';
  inputs.src-typography-v0_2_4.flake = false;
  inputs.src-typography-v0_2_4.type = "github";
  inputs.src-typography-v0_2_4.owner = "treeform";
  inputs.src-typography-v0_2_4.repo = "typography";
  inputs.src-typography-v0_2_4.ref = "refs/tags/v0.2.4";
  
  
  inputs."flippy".url = "path:../../../f/flippy";
  inputs."flippy".type = "github";
  inputs."flippy".owner = "riinr";
  inputs."flippy".repo = "flake-nimble";
  inputs."flippy".ref = "flake-pinning";
  inputs."flippy".dir = "nimpkgs/f/flippy";

  
  inputs."vmath".url = "path:../../../v/vmath";
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."print".url = "path:../../../p/print";
  inputs."print".type = "github";
  inputs."print".owner = "riinr";
  inputs."print".repo = "flake-nimble";
  inputs."print".ref = "flake-pinning";
  inputs."print".dir = "nimpkgs/p/print";

  outputs = { self, nixpkgs, src-typography-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-typography-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-typography-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}