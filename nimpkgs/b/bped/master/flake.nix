{
  description = ''Nim implementation of the Bittorrent ascii serialization protocol'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bped-master.flake = false;
  inputs.src-bped-master.type = "github";
  inputs.src-bped-master.owner = "twist-vector";
  inputs.src-bped-master.repo = "nim-bped";
  inputs.src-bped-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bped-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bped-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bped-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}