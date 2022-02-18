{
  description = ''Wrapper of the libtcod library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libtcod_nim-v0_95.flake = false;
  inputs.src-libtcod_nim-v0_95.type = "github";
  inputs.src-libtcod_nim-v0_95.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_95.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_95.ref = "refs/tags/v0.95";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libtcod_nim-v0_95, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_95;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-v0_95"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}