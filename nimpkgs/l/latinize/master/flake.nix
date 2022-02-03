{
  description = ''Convert accents (diacritics) from strings to latin characters.'';
  inputs.src-latinize-master.flake = false;
  inputs.src-latinize-master.type = "github";
  inputs.src-latinize-master.owner = "AmanoTeam";
  inputs.src-latinize-master.repo = "Latinize";
  inputs.src-latinize-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-latinize-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latinize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-latinize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}