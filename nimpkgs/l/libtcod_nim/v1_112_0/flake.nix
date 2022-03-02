{
  description = ''Wrapper of the libtcod library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libtcod_nim-v1_112_0.flake = false;
  inputs.src-libtcod_nim-v1_112_0.type = "github";
  inputs.src-libtcod_nim-v1_112_0.owner = "Vladar4";
  inputs.src-libtcod_nim-v1_112_0.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v1_112_0.ref = "refs/tags/v1.112.0";
  inputs.src-libtcod_nim-v1_112_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libtcod_nim-v1_112_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v1_112_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-v1_112_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}