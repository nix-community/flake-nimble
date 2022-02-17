{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';
  inputs.src-svvpi-v0_0_4.flake = false;
  inputs.src-svvpi-v0_0_4.type = "github";
  inputs.src-svvpi-v0_0_4.owner = "kaushalmodi";
  inputs.src-svvpi-v0_0_4.repo = "nim-svvpi";
  inputs.src-svvpi-v0_0_4.ref = "refs/tags/v0.0.4";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-svvpi-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svvpi-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svvpi-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}