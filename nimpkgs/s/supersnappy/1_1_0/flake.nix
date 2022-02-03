{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
  inputs.src-supersnappy-1_1_0.flake = false;
  inputs.src-supersnappy-1_1_0.type = "github";
  inputs.src-supersnappy-1_1_0.owner = "guzba";
  inputs.src-supersnappy-1_1_0.repo = "supersnappy";
  inputs.src-supersnappy-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-supersnappy-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-supersnappy-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}