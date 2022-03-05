{
  description = ''A command lined based text editor inspired by vi/vim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-moe-v0_0_81.flake = false;
  inputs.src-moe-v0_0_81.type = "github";
  inputs.src-moe-v0_0_81.owner = "fox0430";
  inputs.src-moe-v0_0_81.repo = "moe";
  inputs.src-moe-v0_0_81.ref = "refs/tags/v0.0.81";
  inputs.src-moe-v0_0_81.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/walkre-niboshi/nim-ncurses".type = "github";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".owner = "riinr";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".repo = "flake-nimble";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".ref = "flake-pinning";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".dir = "nimpkgs/h/https://github.com/walkre-niboshi/nim-ncurses";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-moe-v0_0_81, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_0_81;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_0_81"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}