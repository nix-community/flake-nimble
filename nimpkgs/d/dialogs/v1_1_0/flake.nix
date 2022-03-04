{
  description = ''wraps GTK+ or Windows' open file dialogs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dialogs-v1_1_0.flake = false;
  inputs.src-dialogs-v1_1_0.type = "github";
  inputs.src-dialogs-v1_1_0.owner = "nim-lang";
  inputs.src-dialogs-v1_1_0.repo = "dialogs";
  inputs.src-dialogs-v1_1_0.ref = "refs/tags/v1.1.0";
  inputs.src-dialogs-v1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."gtk2".type = "github";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".repo = "flake-nimble";
  inputs."gtk2".ref = "flake-pinning";
  inputs."gtk2".dir = "nimpkgs/g/gtk2";
  inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dialogs-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dialogs-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dialogs-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}