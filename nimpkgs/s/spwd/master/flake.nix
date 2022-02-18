{
  description = ''Nim port of Python's spwd module for working with the UNIX shadow password file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spwd-master.flake = false;
  inputs.src-spwd-master.type = "github";
  inputs.src-spwd-master.owner = "achesak";
  inputs.src-spwd-master.repo = "nim-spwd";
  inputs.src-spwd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-spwd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spwd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spwd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}