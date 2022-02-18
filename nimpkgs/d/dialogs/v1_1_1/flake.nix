{
  description = ''wraps GTK+ or Windows' open file dialogs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dialogs-v1_1_1.flake = false;
  inputs.src-dialogs-v1_1_1.type = "github";
  inputs.src-dialogs-v1_1_1.owner = "nim-lang";
  inputs.src-dialogs-v1_1_1.repo = "dialogs";
  inputs.src-dialogs-v1_1_1.ref = "refs/tags/v1.1.1";
  
  
  inputs."gtk2".type = "github";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".repo = "flake-nimble";
  inputs."gtk2".ref = "flake-pinning";
  inputs."gtk2".dir = "nimpkgs/g/gtk2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dialogs-v1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dialogs-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dialogs-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}