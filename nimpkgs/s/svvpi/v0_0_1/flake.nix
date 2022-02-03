{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';
  inputs.src-svvpi-v0_0_1.flake = false;
  inputs.src-svvpi-v0_0_1.type = "github";
  inputs.src-svvpi-v0_0_1.owner = "kaushalmodi";
  inputs.src-svvpi-v0_0_1.repo = "nim-svvpi";
  inputs.src-svvpi-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-svvpi-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svvpi-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svvpi-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}