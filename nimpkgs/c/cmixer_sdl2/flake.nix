{
  description = ''Lightweight audio mixer for SDL2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."cmixer_sdl2-master".type = "github";
  inputs."cmixer_sdl2-master".owner = "riinr";
  inputs."cmixer_sdl2-master".repo = "flake-nimble";
  inputs."cmixer_sdl2-master".ref = "flake-pinning";
  inputs."cmixer_sdl2-master".dir = "nimpkgs/c/cmixer_sdl2/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}