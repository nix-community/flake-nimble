{
  description = ''A command lined based text editor inspired by vi/vim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-moe-develop.flake = false;
  inputs.src-moe-develop.type = "github";
  inputs.src-moe-develop.owner = "fox0430";
  inputs.src-moe-develop.repo = "moe";
  inputs.src-moe-develop.ref = "refs/heads/develop";
  
  
  inputs."ncurses".type = "github";
  inputs."ncurses".owner = "riinr";
  inputs."ncurses".repo = "flake-nimble";
  inputs."ncurses".ref = "flake-pinning";
  inputs."ncurses".dir = "nimpkgs/n/ncurses";

  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, flakeNimbleLib, src-moe-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moe-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}