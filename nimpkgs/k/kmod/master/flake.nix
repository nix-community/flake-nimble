{
  description = ''High-level wrapper for Linux's kmod library'';
  inputs.src-kmod-master.flake = false;
  inputs.src-kmod-master.type = "github";
  inputs.src-kmod-master.owner = "alaviss";
  inputs.src-kmod-master.repo = "kmod";
  inputs.src-kmod-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-kmod-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kmod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kmod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}