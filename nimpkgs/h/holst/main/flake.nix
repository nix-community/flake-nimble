{
  description = ''A parser for Jupyter notebooks.'';
  inputs.src-holst-main.flake = false;
  inputs.src-holst-main.type = "github";
  inputs.src-holst-main.owner = "ruivieira";
  inputs.src-holst-main.repo = "nim-holst";
  inputs.src-holst-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-holst-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-holst-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}