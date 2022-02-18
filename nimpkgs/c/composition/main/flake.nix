{
  description = ''Composition pattern with event handling library in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-composition-main.flake = false;
  inputs.src-composition-main.type = "github";
  inputs.src-composition-main.owner = "DavidMeagher1";
  inputs.src-composition-main.repo = "composition";
  inputs.src-composition-main.ref = "refs/heads/main";
  
  
  inputs."macrosex".type = "github";
  inputs."macrosex".owner = "riinr";
  inputs."macrosex".repo = "flake-nimble";
  inputs."macrosex".ref = "flake-pinning";
  inputs."macrosex".dir = "nimpkgs/m/macrosex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-composition-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-composition-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-composition-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}