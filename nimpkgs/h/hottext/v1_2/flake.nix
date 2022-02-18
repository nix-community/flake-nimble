{
  description = ''Rapid serial text presenter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hottext-v1_2.flake = false;
  inputs.src-hottext-v1_2.type = "other";
  inputs.src-hottext-v1_2.owner = "~ehmry";
  inputs.src-hottext-v1_2.repo = "hottext";
  inputs.src-hottext-v1_2.ref = "refs/tags/v1.2";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."typography".type = "github";
  inputs."typography".owner = "riinr";
  inputs."typography".repo = "flake-nimble";
  inputs."typography".ref = "flake-pinning";
  inputs."typography".dir = "nimpkgs/t/typography";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hottext-v1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hottext-v1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hottext-v1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}