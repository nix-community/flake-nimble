{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
  inputs.src-supersnappy-2_0_0.flake = false;
  inputs.src-supersnappy-2_0_0.type = "github";
  inputs.src-supersnappy-2_0_0.owner = "guzba";
  inputs.src-supersnappy-2_0_0.repo = "supersnappy";
  inputs.src-supersnappy-2_0_0.ref = "refs/tags/2.0.0";
  
  outputs = { self, nixpkgs, src-supersnappy-2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-supersnappy-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}