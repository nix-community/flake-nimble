{
  description = ''The Denim UI library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-denim_ui-master.flake = false;
  inputs.src-denim_ui-master.type = "github";
  inputs.src-denim_ui-master.owner = "nortero-code";
  inputs.src-denim_ui-master.repo = "denim-ui";
  inputs.src-denim_ui-master.ref = "refs/heads/master";
  inputs.src-denim_ui-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."itertools".type = "github";
  # inputs."itertools".owner = "riinr";
  # inputs."itertools".repo = "flake-nimble";
  # inputs."itertools".ref = "flake-pinning";
  # inputs."itertools".dir = "nimpkgs/i/itertools";
  # inputs."itertools".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."itertools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."macroutils".type = "github";
  # inputs."macroutils".owner = "riinr";
  # inputs."macroutils".repo = "flake-nimble";
  # inputs."macroutils".ref = "flake-pinning";
  # inputs."macroutils".dir = "nimpkgs/m/macroutils";
  # inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."rx_nim".type = "github";
  # inputs."rx_nim".owner = "riinr";
  # inputs."rx_nim".repo = "flake-nimble";
  # inputs."rx_nim".ref = "flake-pinning";
  # inputs."rx_nim".dir = "nimpkgs/r/rx_nim";
  # inputs."rx_nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rx_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-denim_ui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-denim_ui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-denim_ui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}