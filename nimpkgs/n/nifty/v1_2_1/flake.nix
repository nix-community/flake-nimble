{
  description = ''A decentralized (pseudo) package manager and script runner.'';
  inputs.src-nifty-v1_2_1.flake = false;
  inputs.src-nifty-v1_2_1.type = "github";
  inputs.src-nifty-v1_2_1.owner = "h3rald";
  inputs.src-nifty-v1_2_1.repo = "nifty";
  inputs.src-nifty-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, src-nifty-v1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nifty-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nifty-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}