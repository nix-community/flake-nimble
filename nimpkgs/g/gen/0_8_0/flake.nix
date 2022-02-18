{
  description = ''Boilerplate generator for Jester web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gen-0_8_0.flake = false;
  inputs.src-gen-0_8_0.type = "github";
  inputs.src-gen-0_8_0.owner = "Adeohluwa";
  inputs.src-gen-0_8_0.repo = "gen";
  inputs.src-gen-0_8_0.ref = "refs/tags/0.8.0";
  
  
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."fab".type = "github";
  inputs."fab".owner = "riinr";
  inputs."fab".repo = "flake-nimble";
  inputs."fab".ref = "flake-pinning";
  inputs."fab".dir = "nimpkgs/f/fab";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gen-0_8_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gen-0_8_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gen-0_8_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}