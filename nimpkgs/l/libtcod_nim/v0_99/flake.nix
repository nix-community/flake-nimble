{
  description = ''Wrapper of the libtcod library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libtcod_nim-v0_99.flake = false;
  inputs.src-libtcod_nim-v0_99.type = "github";
  inputs.src-libtcod_nim-v0_99.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_99.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_99.ref = "refs/tags/v0.99";
  inputs.src-libtcod_nim-v0_99.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libtcod_nim-v0_99, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_99;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-v0_99"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}