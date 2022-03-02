{
  description = ''Lightweight audio mixer for SDL2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cmixer_sdl2-master.flake = false;
  inputs.src-cmixer_sdl2-master.type = "github";
  inputs.src-cmixer_sdl2-master.owner = "rxi";
  inputs.src-cmixer_sdl2-master.repo = "cmixer_sdl2-nim";
  inputs.src-cmixer_sdl2-master.ref = "refs/heads/master";
  inputs.src-cmixer_sdl2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cmixer".type = "github";
  # inputs."cmixer".owner = "riinr";
  # inputs."cmixer".repo = "flake-nimble";
  # inputs."cmixer".ref = "flake-pinning";
  # inputs."cmixer".dir = "nimpkgs/c/cmixer";
  # inputs."cmixer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cmixer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."sdl2".type = "github";
  # inputs."sdl2".owner = "riinr";
  # inputs."sdl2".repo = "flake-nimble";
  # inputs."sdl2".ref = "flake-pinning";
  # inputs."sdl2".dir = "nimpkgs/s/sdl2";
  # inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cmixer_sdl2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmixer_sdl2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cmixer_sdl2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}