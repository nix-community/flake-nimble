{
  description = ''Temporary package to fix broken code in 0.11.2 stable.'';
  inputs.src-options-master.flake = false;
  inputs.src-options-master.type = "github";
  inputs.src-options-master.owner = "fallingduck";
  inputs.src-options-master.repo = "options-nim";
  inputs.src-options-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-options-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-options-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-options-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}