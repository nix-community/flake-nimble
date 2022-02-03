{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';
  inputs.src-honeycomb-v0_1_0.flake = false;
  inputs.src-honeycomb-v0_1_0.type = "github";
  inputs.src-honeycomb-v0_1_0.owner = "KatrinaKitten";
  inputs.src-honeycomb-v0_1_0.repo = "honeycomb";
  inputs.src-honeycomb-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-honeycomb-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-honeycomb-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-honeycomb-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}