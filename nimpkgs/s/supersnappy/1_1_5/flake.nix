{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
  inputs.src-supersnappy-1_1_5.flake = false;
  inputs.src-supersnappy-1_1_5.type = "github";
  inputs.src-supersnappy-1_1_5.owner = "guzba";
  inputs.src-supersnappy-1_1_5.repo = "supersnappy";
  inputs.src-supersnappy-1_1_5.ref = "refs/tags/1.1.5";
  
  outputs = { self, nixpkgs, src-supersnappy-1_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-supersnappy-1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}