{
  description = ''Full-featured 2d graphics library for Nim.'';
  inputs.src-pixie-0_0_3.flake = false;
  inputs.src-pixie-0_0_3.type = "github";
  inputs.src-pixie-0_0_3.owner = "treeform";
  inputs.src-pixie-0_0_3.repo = "pixie";
  inputs.src-pixie-0_0_3.ref = "refs/tags/0.0.3";
  
  
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

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";

  outputs = { self, nixpkgs, src-pixie-0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pixie-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pixie-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}