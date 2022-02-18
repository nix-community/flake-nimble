{
  description = ''A Nim wrapper for Python's matplotlib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-matplotnim-v0_1_0.flake = false;
  inputs.src-matplotnim-v0_1_0.type = "github";
  inputs.src-matplotnim-v0_1_0.owner = "ruivieira";
  inputs.src-matplotnim-v0_1_0.repo = "matplotnim";
  inputs.src-matplotnim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, flakeNimbleLib, src-matplotnim-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-matplotnim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-matplotnim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}