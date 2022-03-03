{
  description = ''A command lined based text editor inspired by vi/vim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-moe-v0_3_0.flake = false;
  inputs.src-moe-v0_3_0.type = "github";
  inputs.src-moe-v0_3_0.owner = "fox0430";
  inputs.src-moe-v0_3_0.repo = "moe";
  inputs.src-moe-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-moe-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ncurses".type = "github";
  # inputs."ncurses".owner = "riinr";
  # inputs."ncurses".repo = "flake-nimble";
  # inputs."ncurses".ref = "flake-pinning";
  # inputs."ncurses".dir = "nimpkgs/n/ncurses";
  # inputs."ncurses".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ncurses".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."unicodedb".type = "github";
  # inputs."unicodedb".owner = "riinr";
  # inputs."unicodedb".repo = "flake-nimble";
  # inputs."unicodedb".ref = "flake-pinning";
  # inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  # inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."parsetoml".type = "github";
  # inputs."parsetoml".owner = "riinr";
  # inputs."parsetoml".repo = "flake-nimble";
  # inputs."parsetoml".ref = "flake-pinning";
  # inputs."parsetoml".dir = "nimpkgs/p/parsetoml";
  # inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-moe-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}