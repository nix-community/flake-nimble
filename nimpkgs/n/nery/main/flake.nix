{
  description = ''A simple library to create queries in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nery-main.flake = false;
  inputs.src-nery-main.type = "github";
  inputs.src-nery-main.owner = "david-Kunz";
  inputs.src-nery-main.repo = "Nery";
  inputs.src-nery-main.ref = "refs/heads/main";
  
  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nery-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nery-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nery-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}