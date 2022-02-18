{
  description = ''Nim implementation of minhash algoritim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-minhash-master.flake = false;
  inputs.src-minhash-master.type = "github";
  inputs.src-minhash-master.owner = "bung87";
  inputs.src-minhash-master.repo = "minhash";
  inputs.src-minhash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-minhash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-minhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-minhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}