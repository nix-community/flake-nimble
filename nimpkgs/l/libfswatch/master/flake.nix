{
  description = ''Nim binding to libfswatch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libfswatch-master.flake = false;
  inputs.src-libfswatch-master.type = "github";
  inputs.src-libfswatch-master.owner = "paul-nameless";
  inputs.src-libfswatch-master.repo = "nim-fswatch";
  inputs.src-libfswatch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libfswatch-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libfswatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libfswatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}