{
  description = ''A high performance Nim implementation of a Cyclic Polynomial Hash, aka BuzHash, and the Rabin-Karp algorithm'';
  inputs.src-RollingHash-master.flake = false;
  inputs.src-RollingHash-master.type = "github";
  inputs.src-RollingHash-master.owner = "MarcAzar";
  inputs.src-RollingHash-master.repo = "RollingHash";
  inputs.src-RollingHash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-RollingHash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RollingHash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-RollingHash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}