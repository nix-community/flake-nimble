{
  description = ''Nim implementation of simhash algoritim'';
  inputs.src-simhash-master.flake = false;
  inputs.src-simhash-master.type = "github";
  inputs.src-simhash-master.owner = "bung87";
  inputs.src-simhash-master.repo = "simhash-nim";
  inputs.src-simhash-master.ref = "refs/heads/master";
  
  
  inputs."lc".type = "github";
  inputs."lc".owner = "riinr";
  inputs."lc".repo = "flake-nimble";
  inputs."lc".ref = "flake-pinning";
  inputs."lc".dir = "nimpkgs/l/lc";

  outputs = { self, nixpkgs, src-simhash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}