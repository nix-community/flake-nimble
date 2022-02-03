{
  description = ''A wrapper for the keccak-tiny C library'';
  inputs.src-keccak_tiny-master.flake = false;
  inputs.src-keccak_tiny-master.type = "github";
  inputs.src-keccak_tiny-master.owner = "status-im";
  inputs.src-keccak_tiny-master.repo = "nim-keccak-tiny";
  inputs.src-keccak_tiny-master.ref = "refs/heads/master";
  
  
  inputs."ranges".url = "path:../../../r/ranges";
  inputs."ranges".type = "github";
  inputs."ranges".owner = "riinr";
  inputs."ranges".repo = "flake-nimble";
  inputs."ranges".ref = "flake-pinning";
  inputs."ranges".dir = "nimpkgs/r/ranges";

  outputs = { self, nixpkgs, src-keccak_tiny-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keccak_tiny-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-keccak_tiny-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}