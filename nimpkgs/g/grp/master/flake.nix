{
  description = ''Nim port of Python's grp module for working with the UNIX group database file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-grp-master.flake = false;
  inputs.src-grp-master.type = "github";
  inputs.src-grp-master.owner = "achesak";
  inputs.src-grp-master.repo = "nim-grp";
  inputs.src-grp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-grp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-grp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}