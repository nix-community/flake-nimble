{
  description = ''Nim to GPU shader language compiler and supporting utilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shady-0_0_1.flake = false;
  inputs.src-shady-0_0_1.type = "github";
  inputs.src-shady-0_0_1.owner = "treeform";
  inputs.src-shady-0_0_1.repo = "shady";
  inputs.src-shady-0_0_1.ref = "refs/tags/0.0.1";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  outputs = { self, nixpkgs, flakeNimbleLib, src-shady-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shady-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shady-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}