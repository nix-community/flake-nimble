{
  description = ''meowhash wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-meow-0_1_0.flake = false;
  inputs.src-meow-0_1_0.type = "github";
  inputs.src-meow-0_1_0.owner = "disruptek";
  inputs.src-meow-0_1_0.repo = "meow";
  inputs.src-meow-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-meow-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-meow-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-meow-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}