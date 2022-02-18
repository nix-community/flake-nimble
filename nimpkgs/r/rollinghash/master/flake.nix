{
  description = ''A high performance Nim implementation of a Cyclic Polynomial Hash, aka BuzHash, and the Rabin-Karp algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rollinghash-master.flake = false;
  inputs.src-rollinghash-master.type = "github";
  inputs.src-rollinghash-master.owner = "MarcAzar";
  inputs.src-rollinghash-master.repo = "RollingHash";
  inputs.src-rollinghash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rollinghash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rollinghash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rollinghash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}