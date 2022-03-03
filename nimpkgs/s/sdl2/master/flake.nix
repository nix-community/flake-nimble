{
  description = ''Wrapper for SDL 2.x'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sdl2-master.flake = false;
  inputs.src-sdl2-master.type = "github";
  inputs.src-sdl2-master.owner = "nim-lang";
  inputs.src-sdl2-master.repo = "sdl2";
  inputs.src-sdl2-master.ref = "refs/heads/master";
  inputs.src-sdl2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdl2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}