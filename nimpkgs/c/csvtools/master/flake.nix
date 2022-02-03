{
  description = ''Manage CSV files'';
  inputs.src-csvtools-master.flake = false;
  inputs.src-csvtools-master.type = "github";
  inputs.src-csvtools-master.owner = "andreaferretti";
  inputs.src-csvtools-master.repo = "csvtools";
  inputs.src-csvtools-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-csvtools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvtools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}