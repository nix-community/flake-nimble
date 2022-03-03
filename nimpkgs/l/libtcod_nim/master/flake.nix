{
  description = ''Wrapper of the libtcod library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libtcod_nim-master.flake = false;
  inputs.src-libtcod_nim-master.type = "github";
  inputs.src-libtcod_nim-master.owner = "Vladar4";
  inputs.src-libtcod_nim-master.repo = "libtcod_nim";
  inputs.src-libtcod_nim-master.ref = "refs/heads/master";
  inputs.src-libtcod_nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libtcod_nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}