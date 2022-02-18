{
  description = ''Nim module for filename matching with UNIX shell patterns'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fnmatch-master.flake = false;
  inputs.src-fnmatch-master.type = "github";
  inputs.src-fnmatch-master.owner = "achesak";
  inputs.src-fnmatch-master.repo = "nim-fnmatch";
  inputs.src-fnmatch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fnmatch-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fnmatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fnmatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}