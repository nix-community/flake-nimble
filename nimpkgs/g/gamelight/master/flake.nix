{
  description = ''A set of simple modules for writing a JavaScript 2D game.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gamelight-master.flake = false;
  inputs.src-gamelight-master.type = "github";
  inputs.src-gamelight-master.owner = "dom96";
  inputs.src-gamelight-master.repo = "gamelight";
  inputs.src-gamelight-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."typography".type = "github";
  inputs."typography".owner = "riinr";
  inputs."typography".repo = "flake-nimble";
  inputs."typography".ref = "flake-pinning";
  inputs."typography".dir = "nimpkgs/t/typography";

  
  inputs."flippy".type = "github";
  inputs."flippy".owner = "riinr";
  inputs."flippy".repo = "flake-nimble";
  inputs."flippy".ref = "flake-pinning";
  inputs."flippy".dir = "nimpkgs/f/flippy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gamelight-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gamelight-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gamelight-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}