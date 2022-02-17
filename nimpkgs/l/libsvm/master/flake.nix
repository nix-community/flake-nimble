{
  description = ''libsvm wrapper for Nim'';
  inputs.src-libsvm-master.flake = false;
  inputs.src-libsvm-master.type = "github";
  inputs.src-libsvm-master.owner = "genotrance";
  inputs.src-libsvm-master.repo = "libsvm";
  inputs.src-libsvm-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-libsvm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsvm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libsvm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}