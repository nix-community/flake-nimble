{
  description = ''Library to support work with pathnames in Windows and Posix-based systems. Inspired by Rubies pathname.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pathname-master.flake = false;
  inputs.src-pathname-master.type = "github";
  inputs.src-pathname-master.owner = "RaimundHuebel";
  inputs.src-pathname-master.repo = "nimpathname";
  inputs.src-pathname-master.ref = "refs/heads/master";
  inputs.src-pathname-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pathname-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pathname-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pathname-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}