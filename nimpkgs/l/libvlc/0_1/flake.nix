{
  description = ''libvlc bindings for Nim'';
  inputs.src-libvlc-0_1.flake = false;
  inputs.src-libvlc-0_1.type = "github";
  inputs.src-libvlc-0_1.owner = "Yardanico";
  inputs.src-libvlc-0_1.repo = "nim-libvlc";
  inputs.src-libvlc-0_1.ref = "refs/tags/0.1";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-libvlc-0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libvlc-0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libvlc-0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}