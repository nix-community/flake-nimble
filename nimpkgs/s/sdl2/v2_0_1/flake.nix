{
  description = ''Wrapper for SDL 2.x'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sdl2-v2_0_1.flake = false;
  inputs.src-sdl2-v2_0_1.type = "github";
  inputs.src-sdl2-v2_0_1.owner = "nim-lang";
  inputs.src-sdl2-v2_0_1.repo = "sdl2";
  inputs.src-sdl2-v2_0_1.ref = "refs/tags/v2.0.1";
  inputs.src-sdl2-v2_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2-v2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}