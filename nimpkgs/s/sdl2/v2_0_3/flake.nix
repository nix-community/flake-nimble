{
  description = ''Wrapper for SDL 2.x'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sdl2-v2_0_3.flake = false;
  inputs.src-sdl2-v2_0_3.type = "github";
  inputs.src-sdl2-v2_0_3.owner = "nim-lang";
  inputs.src-sdl2-v2_0_3.repo = "sdl2";
  inputs.src-sdl2-v2_0_3.ref = "refs/tags/v2.0.3";
  inputs.src-sdl2-v2_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2-v2_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2-v2_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2-v2_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}