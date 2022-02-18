{
  description = ''A command lined based text editor inspired by vi/vim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-moe-v0_1_3.flake = false;
  inputs.src-moe-v0_1_3.type = "github";
  inputs.src-moe-v0_1_3.owner = "fox0430";
  inputs.src-moe-v0_1_3.repo = "moe";
  inputs.src-moe-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."https://github.com/walkre-niboshi/nim-ncurses".type = "github";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".owner = "riinr";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".repo = "flake-nimble";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".ref = "flake-pinning";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".dir = "nimpkgs/h/https://github.com/walkre-niboshi/nim-ncurses";

  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-moe-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}