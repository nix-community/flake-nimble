{
  description = ''A parser for Jupyter notebooks.'';
  inputs.src-holst-0_1_0.flake = false;
  inputs.src-holst-0_1_0.type = "github";
  inputs.src-holst-0_1_0.owner = "ruivieira";
  inputs.src-holst-0_1_0.repo = "nim-holst";
  inputs.src-holst-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-holst-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-holst-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}