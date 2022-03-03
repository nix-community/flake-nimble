{
  description = ''This library is a wrapper to C GDBM library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gdbmc-master.flake = false;
  inputs.src-gdbmc-master.type = "github";
  inputs.src-gdbmc-master.owner = "vycb";
  inputs.src-gdbmc-master.repo = "gdbmc.nim";
  inputs.src-gdbmc-master.ref = "refs/heads/master";
  inputs.src-gdbmc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gdbmc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gdbmc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gdbmc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}