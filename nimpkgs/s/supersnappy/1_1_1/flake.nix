{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
  inputs.src-supersnappy-1_1_1.flake = false;
  inputs.src-supersnappy-1_1_1.type = "github";
  inputs.src-supersnappy-1_1_1.owner = "guzba";
  inputs.src-supersnappy-1_1_1.repo = "supersnappy";
  inputs.src-supersnappy-1_1_1.ref = "refs/tags/1.1.1";
  
  outputs = { self, nixpkgs, src-supersnappy-1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-supersnappy-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}