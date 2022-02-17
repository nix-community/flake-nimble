{
  description = ''libgit2 wrapper for Nim'';
  inputs.src-nimgit2-master.flake = false;
  inputs.src-nimgit2-master.type = "github";
  inputs.src-nimgit2-master.owner = "genotrance";
  inputs.src-nimgit2-master.repo = "nimgit2";
  inputs.src-nimgit2-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimgit2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgit2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgit2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}