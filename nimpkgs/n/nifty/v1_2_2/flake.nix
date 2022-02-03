{
  description = ''A decentralized (pseudo) package manager and script runner.'';
  inputs.src-nifty-v1_2_2.flake = false;
  inputs.src-nifty-v1_2_2.type = "github";
  inputs.src-nifty-v1_2_2.owner = "h3rald";
  inputs.src-nifty-v1_2_2.repo = "nifty";
  inputs.src-nifty-v1_2_2.ref = "refs/tags/v1.2.2";
  
  outputs = { self, nixpkgs, src-nifty-v1_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nifty-v1_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nifty-v1_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}