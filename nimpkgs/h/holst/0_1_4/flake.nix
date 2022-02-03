{
  description = ''A parser for Jupyter notebooks.'';
  inputs.src-holst-0_1_4.flake = false;
  inputs.src-holst-0_1_4.type = "github";
  inputs.src-holst-0_1_4.owner = "ruivieira";
  inputs.src-holst-0_1_4.repo = "nim-holst";
  inputs.src-holst-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, src-holst-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-holst-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}