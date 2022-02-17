{
  description = ''libvlc bindings for Nim'';
  inputs.src-libvlc-master.flake = false;
  inputs.src-libvlc-master.type = "github";
  inputs.src-libvlc-master.owner = "Yardanico";
  inputs.src-libvlc-master.repo = "nim-libvlc";
  inputs.src-libvlc-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-libvlc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libvlc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libvlc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}