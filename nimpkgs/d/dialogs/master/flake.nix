{
  description = ''wraps GTK+ or Windows' open file dialogs'';
  inputs.src-dialogs-master.flake = false;
  inputs.src-dialogs-master.type = "github";
  inputs.src-dialogs-master.owner = "nim-lang";
  inputs.src-dialogs-master.repo = "dialogs";
  inputs.src-dialogs-master.ref = "refs/heads/master";
  
  
  inputs."gtk2".url = "path:../../../g/gtk2";
  inputs."gtk2".type = "github";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".repo = "flake-nimble";
  inputs."gtk2".ref = "flake-pinning";
  inputs."gtk2".dir = "nimpkgs/g/gtk2";

  outputs = { self, nixpkgs, src-dialogs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dialogs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dialogs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}