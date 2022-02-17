{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';
  inputs.src-svvpi-main.flake = false;
  inputs.src-svvpi-main.type = "github";
  inputs.src-svvpi-main.owner = "kaushalmodi";
  inputs.src-svvpi-main.repo = "nim-svvpi";
  inputs.src-svvpi-main.ref = "refs/heads/main";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-svvpi-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svvpi-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svvpi-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}