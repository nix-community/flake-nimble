{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-svdpi-v0_1_1.flake = false;
  inputs.src-svdpi-v0_1_1.type = "github";
  inputs.src-svdpi-v0_1_1.owner = "kaushalmodi";
  inputs.src-svdpi-v0_1_1.repo = "nim-svdpi";
  inputs.src-svdpi-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-svdpi-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svdpi-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-svdpi-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}