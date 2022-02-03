{
  description = ''A command lined based text editor inspired by vi/vim'';
  inputs.src-moe-develop.flake = false;
  inputs.src-moe-develop.type = "github";
  inputs.src-moe-develop.owner = "fox0430";
  inputs.src-moe-develop.repo = "moe";
  inputs.src-moe-develop.ref = "refs/heads/develop";
  
  
  inputs."ncurses".url = "path:../../../n/ncurses";
  inputs."ncurses".type = "github";
  inputs."ncurses".owner = "riinr";
  inputs."ncurses".repo = "flake-nimble";
  inputs."ncurses".ref = "flake-pinning";
  inputs."ncurses".dir = "nimpkgs/n/ncurses";

  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."parsetoml".url = "path:../../../p/parsetoml";
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, src-moe-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moe-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}