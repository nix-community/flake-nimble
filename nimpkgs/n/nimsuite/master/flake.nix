{
  description = ''a simple test framework for nim.'';
  inputs.src-nimsuite-master.flake = false;
  inputs.src-nimsuite-master.type = "github";
  inputs.src-nimsuite-master.owner = "c6h4clch3";
  inputs.src-nimsuite-master.repo = "NimSuite";
  inputs.src-nimsuite-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimsuite-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsuite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsuite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}