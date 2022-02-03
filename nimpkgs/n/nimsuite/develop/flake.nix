{
  description = ''a simple test framework for nim.'';
  inputs.src-nimsuite-develop.flake = false;
  inputs.src-nimsuite-develop.type = "github";
  inputs.src-nimsuite-develop.owner = "c6h4clch3";
  inputs.src-nimsuite-develop.repo = "NimSuite";
  inputs.src-nimsuite-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-nimsuite-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsuite-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsuite-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}