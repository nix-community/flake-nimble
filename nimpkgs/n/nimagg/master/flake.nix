{
  description = ''Hi Fidelity Rendering Engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimagg-master.flake = false;
  inputs.src-nimagg-master.type = "github";
  inputs.src-nimagg-master.owner = "jangko";
  inputs.src-nimagg-master.repo = "nimAGG";
  inputs.src-nimagg-master.ref = "refs/heads/master";
  
  
  inputs."sdl2_nim".type = "github";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".repo = "flake-nimble";
  inputs."sdl2_nim".ref = "flake-pinning";
  inputs."sdl2_nim".dir = "nimpkgs/s/sdl2_nim";

  
  inputs."nimbmp".type = "github";
  inputs."nimbmp".owner = "riinr";
  inputs."nimbmp".repo = "flake-nimble";
  inputs."nimbmp".ref = "flake-pinning";
  inputs."nimbmp".dir = "nimpkgs/n/nimbmp";

  
  inputs."freetype".type = "github";
  inputs."freetype".owner = "riinr";
  inputs."freetype".repo = "flake-nimble";
  inputs."freetype".ref = "flake-pinning";
  inputs."freetype".dir = "nimpkgs/f/freetype";

  
  inputs."polybool".type = "github";
  inputs."polybool".owner = "riinr";
  inputs."polybool".repo = "flake-nimble";
  inputs."polybool".ref = "flake-pinning";
  inputs."polybool".dir = "nimpkgs/p/polybool";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimagg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimagg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimagg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}