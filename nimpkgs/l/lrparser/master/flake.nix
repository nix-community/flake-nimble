{
  description = ''A SLR parser written in Nim with compile-time and run-time grammar generation.'';
  inputs.src-lrparser-master.flake = false;
  inputs.src-lrparser-master.type = "github";
  inputs.src-lrparser-master.owner = "vanyle";
  inputs.src-lrparser-master.repo = "lrparser";
  inputs.src-lrparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lrparser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lrparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}