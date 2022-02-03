{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';
  inputs.src-honeycomb-master.flake = false;
  inputs.src-honeycomb-master.type = "github";
  inputs.src-honeycomb-master.owner = "KatrinaKitten";
  inputs.src-honeycomb-master.repo = "honeycomb";
  inputs.src-honeycomb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-honeycomb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-honeycomb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-honeycomb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}