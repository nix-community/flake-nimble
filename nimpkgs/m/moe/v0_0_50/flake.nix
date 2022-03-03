{
  description = ''A command lined based text editor inspired by vi/vim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-moe-v0_0_50.flake = false;
  inputs.src-moe-v0_0_50.type = "github";
  inputs.src-moe-v0_0_50.owner = "fox0430";
  inputs.src-moe-v0_0_50.repo = "moe";
  inputs.src-moe-v0_0_50.ref = "refs/tags/v0.0.50";
  inputs.src-moe-v0_0_50.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/walkre-niboshi/nim-ncurses".type = "github";
  # inputs."https://github.com/walkre-niboshi/nim-ncurses".owner = "riinr";
  # inputs."https://github.com/walkre-niboshi/nim-ncurses".repo = "flake-nimble";
  # inputs."https://github.com/walkre-niboshi/nim-ncurses".ref = "flake-pinning";
  # inputs."https://github.com/walkre-niboshi/nim-ncurses".dir = "nimpkgs/h/https://github.com/walkre-niboshi/nim-ncurses";
  # inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-moe-v0_0_50, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_0_50;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_0_50"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}