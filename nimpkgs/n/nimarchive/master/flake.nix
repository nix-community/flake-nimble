{
  description = ''libarchive wrapper for Nim'';
  inputs.src-nimarchive-master.flake = false;
  inputs.src-nimarchive-master.type = "github";
  inputs.src-nimarchive-master.owner = "genotrance";
  inputs.src-nimarchive-master.repo = "nimarchive";
  inputs.src-nimarchive-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimarchive-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarchive-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimarchive-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}