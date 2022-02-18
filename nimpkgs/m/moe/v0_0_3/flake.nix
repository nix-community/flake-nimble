{
  description = ''A command lined based text editor inspired by vi/vim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-moe-v0_0_3.flake = false;
  inputs.src-moe-v0_0_3.type = "github";
  inputs.src-moe-v0_0_3.owner = "fox0430";
  inputs.src-moe-v0_0_3.repo = "moe";
  inputs.src-moe-v0_0_3.ref = "refs/tags/v0.0.3";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-moe-v0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}