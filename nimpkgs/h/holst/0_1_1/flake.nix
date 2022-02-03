{
  description = ''A parser for Jupyter notebooks.'';
  inputs.src-holst-0_1_1.flake = false;
  inputs.src-holst-0_1_1.type = "github";
  inputs.src-holst-0_1_1.owner = "ruivieira";
  inputs.src-holst-0_1_1.repo = "nim-holst";
  inputs.src-holst-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-holst-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-holst-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}