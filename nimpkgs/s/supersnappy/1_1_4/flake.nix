{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
  inputs.src-supersnappy-1_1_4.flake = false;
  inputs.src-supersnappy-1_1_4.type = "github";
  inputs.src-supersnappy-1_1_4.owner = "guzba";
  inputs.src-supersnappy-1_1_4.repo = "supersnappy";
  inputs.src-supersnappy-1_1_4.ref = "refs/tags/1.1.4";
  
  outputs = { self, nixpkgs, src-supersnappy-1_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-supersnappy-1_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}