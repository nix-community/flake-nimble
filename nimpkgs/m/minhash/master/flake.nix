{
  description = ''Nim implementation of minhash algoritim'';
  inputs.src-minhash-master.flake = false;
  inputs.src-minhash-master.type = "github";
  inputs.src-minhash-master.owner = "bung87";
  inputs.src-minhash-master.repo = "minhash";
  inputs.src-minhash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-minhash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-minhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-minhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}