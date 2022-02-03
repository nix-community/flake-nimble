{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';
  inputs.src-unalix-master.flake = false;
  inputs.src-unalix-master.type = "github";
  inputs.src-unalix-master.owner = "AmanoTeam";
  inputs.src-unalix-master.repo = "Unalix-nim";
  inputs.src-unalix-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unalix-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unalix-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unalix-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}