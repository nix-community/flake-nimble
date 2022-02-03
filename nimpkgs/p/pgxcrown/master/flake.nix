{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-master.flake = false;
  inputs.src-pgxcrown-master.type = "github";
  inputs.src-pgxcrown-master.owner = "luisacosta828";
  inputs.src-pgxcrown-master.repo = "pgxcrown";
  inputs.src-pgxcrown-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pgxcrown-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}