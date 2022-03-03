{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-simple_parseopt-master.flake = false;
  inputs.src-simple_parseopt-master.type = "github";
  inputs.src-simple_parseopt-master.owner = "onelivesleft";
  inputs.src-simple_parseopt-master.repo = "simple_parseopt";
  inputs.src-simple_parseopt-master.ref = "refs/heads/master";
  inputs.src-simple_parseopt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simple_parseopt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_parseopt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simple_parseopt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}