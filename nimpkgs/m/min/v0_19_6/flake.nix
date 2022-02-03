{
  description = ''A small but practical concatenative programming language and shell.'';
  inputs.src-min-v0_19_6.flake = false;
  inputs.src-min-v0_19_6.type = "github";
  inputs.src-min-v0_19_6.owner = "h3rald";
  inputs.src-min-v0_19_6.repo = "min";
  inputs.src-min-v0_19_6.ref = "refs/tags/v0.19.6";
  
  outputs = { self, nixpkgs, src-min-v0_19_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_19_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-min-v0_19_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}