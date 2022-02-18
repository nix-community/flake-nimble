{
  description = ''Nim module for parsing SubViewer subtitle files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-subviewer-master.flake = false;
  inputs.src-subviewer-master.type = "github";
  inputs.src-subviewer-master.owner = "achesak";
  inputs.src-subviewer-master.repo = "nim-subviewer";
  inputs.src-subviewer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-subviewer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subviewer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-subviewer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}