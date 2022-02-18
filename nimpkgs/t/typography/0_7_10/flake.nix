{
  description = ''Fonts, Typesetting and Rasterization.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-typography-0_7_10.flake = false;
  inputs.src-typography-0_7_10.type = "github";
  inputs.src-typography-0_7_10.owner = "treeform";
  inputs.src-typography-0_7_10.repo = "typography";
  inputs.src-typography-0_7_10.ref = "refs/tags/0.7.10";
  
  
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

  
  inputs."bumpy".type = "github";
  inputs."bumpy".owner = "riinr";
  inputs."bumpy".repo = "flake-nimble";
  inputs."bumpy".ref = "flake-pinning";
  inputs."bumpy".dir = "nimpkgs/b/bumpy";

  
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";

  outputs = { self, nixpkgs, flakeNimbleLib, src-typography-0_7_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-typography-0_7_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-typography-0_7_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}