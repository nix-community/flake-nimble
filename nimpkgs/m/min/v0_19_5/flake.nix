{
  description = ''A small but practical concatenative programming language and shell.'';
  inputs.src-min-v0_19_5.flake = false;
  inputs.src-min-v0_19_5.type = "github";
  inputs.src-min-v0_19_5.owner = "h3rald";
  inputs.src-min-v0_19_5.repo = "min";
  inputs.src-min-v0_19_5.ref = "refs/tags/v0.19.5";
  
  outputs = { self, nixpkgs, src-min-v0_19_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_19_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-min-v0_19_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}