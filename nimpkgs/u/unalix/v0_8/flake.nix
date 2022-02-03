{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';
  inputs.src-unalix-v0_8.flake = false;
  inputs.src-unalix-v0_8.type = "github";
  inputs.src-unalix-v0_8.owner = "AmanoTeam";
  inputs.src-unalix-v0_8.repo = "Unalix-nim";
  inputs.src-unalix-v0_8.ref = "refs/tags/v0.8";
  
  outputs = { self, nixpkgs, src-unalix-v0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unalix-v0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unalix-v0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}