{
  description = ''wraps GTK+ or Windows' open file dialogs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dialogs-master.flake = false;
  inputs.src-dialogs-master.type = "github";
  inputs.src-dialogs-master.owner = "nim-lang";
  inputs.src-dialogs-master.repo = "dialogs";
  inputs.src-dialogs-master.ref = "refs/heads/master";
  inputs.src-dialogs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."gtk2".type = "github";
  # inputs."gtk2".owner = "riinr";
  # inputs."gtk2".repo = "flake-nimble";
  # inputs."gtk2".ref = "flake-pinning";
  # inputs."gtk2".dir = "nimpkgs/g/gtk2";
  # inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dialogs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dialogs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dialogs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}