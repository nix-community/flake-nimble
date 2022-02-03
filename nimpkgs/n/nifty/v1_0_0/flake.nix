{
  description = ''A decentralized (pseudo) package manager and script runner.'';
  inputs.src-nifty-v1_0_0.flake = false;
  inputs.src-nifty-v1_0_0.type = "github";
  inputs.src-nifty-v1_0_0.owner = "h3rald";
  inputs.src-nifty-v1_0_0.repo = "nifty";
  inputs.src-nifty-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-nifty-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nifty-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nifty-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}