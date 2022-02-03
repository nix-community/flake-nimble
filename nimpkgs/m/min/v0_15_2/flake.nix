{
  description = ''A small but practical concatenative programming language and shell.'';
  inputs.src-min-v0_15_2.flake = false;
  inputs.src-min-v0_15_2.type = "github";
  inputs.src-min-v0_15_2.owner = "h3rald";
  inputs.src-min-v0_15_2.repo = "min";
  inputs.src-min-v0_15_2.ref = "refs/tags/v0.15.2";
  
  outputs = { self, nixpkgs, src-min-v0_15_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_15_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-min-v0_15_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}