{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';
  inputs.src-unalix-v0_6.flake = false;
  inputs.src-unalix-v0_6.type = "github";
  inputs.src-unalix-v0_6.owner = "AmanoTeam";
  inputs.src-unalix-v0_6.repo = "Unalix-nim";
  inputs.src-unalix-v0_6.ref = "refs/tags/v0.6";
  
  outputs = { self, nixpkgs, src-unalix-v0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unalix-v0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unalix-v0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}