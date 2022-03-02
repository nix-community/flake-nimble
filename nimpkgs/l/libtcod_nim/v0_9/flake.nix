{
  description = ''Wrapper of the libtcod library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libtcod_nim-v0_9.flake = false;
  inputs.src-libtcod_nim-v0_9.type = "github";
  inputs.src-libtcod_nim-v0_9.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_9.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_9.ref = "refs/tags/v0.9";
  inputs.src-libtcod_nim-v0_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libtcod_nim-v0_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-v0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}