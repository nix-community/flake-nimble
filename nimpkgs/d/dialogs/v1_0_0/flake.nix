{
  description = ''wraps GTK+ or Windows' open file dialogs'';
  inputs.src-dialogs-v1_0_0.flake = false;
  inputs.src-dialogs-v1_0_0.type = "github";
  inputs.src-dialogs-v1_0_0.owner = "nim-lang";
  inputs.src-dialogs-v1_0_0.repo = "dialogs";
  inputs.src-dialogs-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-dialogs-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dialogs-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dialogs-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}