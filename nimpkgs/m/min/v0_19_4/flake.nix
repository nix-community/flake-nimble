{
  description = ''A small but practical concatenative programming language and shell.'';
  inputs.src-min-v0_19_4.flake = false;
  inputs.src-min-v0_19_4.type = "github";
  inputs.src-min-v0_19_4.owner = "h3rald";
  inputs.src-min-v0_19_4.repo = "min";
  inputs.src-min-v0_19_4.ref = "refs/tags/v0.19.4";
  
  outputs = { self, nixpkgs, src-min-v0_19_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_19_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-min-v0_19_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}