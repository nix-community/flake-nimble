{
  description = ''A command lined based text editor inspired by vi/vim'';
  inputs.src-moe-v0_2_6_0.flake = false;
  inputs.src-moe-v0_2_6_0.type = "github";
  inputs.src-moe-v0_2_6_0.owner = "fox0430";
  inputs.src-moe-v0_2_6_0.repo = "moe";
  inputs.src-moe-v0_2_6_0.ref = "refs/tags/v0.2.6.0";
  
  
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

  outputs = { self, nixpkgs, src-moe-v0_2_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_2_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moe-v0_2_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}