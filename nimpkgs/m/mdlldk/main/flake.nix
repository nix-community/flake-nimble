{
  description = ''Dynamic-link libraries (DLLs) Development Kit for mIRC.'';
  inputs.src-mdlldk-main.flake = false;
  inputs.src-mdlldk-main.type = "github";
  inputs.src-mdlldk-main.owner = "rockcavera";
  inputs.src-mdlldk-main.repo = "nim-mdlldk";
  inputs.src-mdlldk-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-mdlldk-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mdlldk-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mdlldk-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}