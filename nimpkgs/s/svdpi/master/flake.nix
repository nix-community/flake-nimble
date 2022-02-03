{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';
  inputs.src-svdpi-master.flake = false;
  inputs.src-svdpi-master.type = "github";
  inputs.src-svdpi-master.owner = "kaushalmodi";
  inputs.src-svdpi-master.repo = "nim-svdpi";
  inputs.src-svdpi-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-svdpi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svdpi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svdpi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}