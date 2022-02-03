{
  description = ''The Nim badgemaker tool.'';
  inputs.src-badgemaker-master.flake = false;
  inputs.src-badgemaker-master.type = "github";
  inputs.src-badgemaker-master.owner = "ethosa";
  inputs.src-badgemaker-master.repo = "badgemaker";
  inputs.src-badgemaker-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-badgemaker-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-badgemaker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-badgemaker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}