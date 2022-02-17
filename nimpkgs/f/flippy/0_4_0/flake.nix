{
  description = ''Flippy is a simple 2d image and drawing library.'';
  inputs.src-flippy-0_4_0.flake = false;
  inputs.src-flippy-0_4_0.type = "github";
  inputs.src-flippy-0_4_0.owner = "treeform";
  inputs.src-flippy-0_4_0.repo = "flippy";
  inputs.src-flippy-0_4_0.ref = "refs/tags/0.4.0";
  
  
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

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  outputs = { self, nixpkgs, src-flippy-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flippy-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flippy-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}