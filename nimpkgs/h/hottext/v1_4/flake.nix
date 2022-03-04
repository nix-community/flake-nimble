{
  description = ''Rapid serial text presenter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hottext-v1_4.flake = false;
  inputs.src-hottext-v1_4.type = "other";
  inputs.src-hottext-v1_4.owner = "~ehmry";
  inputs.src-hottext-v1_4.repo = "hottext";
  inputs.src-hottext-v1_4.ref = "refs/tags/v1.4";
  inputs.src-hottext-v1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."typography".type = "github";
  inputs."typography".owner = "riinr";
  inputs."typography".repo = "flake-nimble";
  inputs."typography".ref = "flake-pinning";
  inputs."typography".dir = "nimpkgs/t/typography";
  inputs."typography".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hottext-v1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hottext-v1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hottext-v1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}