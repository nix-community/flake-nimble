{
  description = ''a simple test framework for nim.'';
  inputs.src-nimsuite-0_1_0.flake = false;
  inputs.src-nimsuite-0_1_0.type = "github";
  inputs.src-nimsuite-0_1_0.owner = "c6h4clch3";
  inputs.src-nimsuite-0_1_0.repo = "NimSuite";
  inputs.src-nimsuite-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-nimsuite-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsuite-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsuite-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}