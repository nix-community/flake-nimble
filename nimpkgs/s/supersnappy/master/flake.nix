{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
  inputs.src-supersnappy-master.flake = false;
  inputs.src-supersnappy-master.type = "github";
  inputs.src-supersnappy-master.owner = "guzba";
  inputs.src-supersnappy-master.repo = "supersnappy";
  inputs.src-supersnappy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-supersnappy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-supersnappy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}