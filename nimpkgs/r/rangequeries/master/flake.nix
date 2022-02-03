{
  description = ''An implementation of Range Queries in Nim'';
  inputs.src-rangequeries-master.flake = false;
  inputs.src-rangequeries-master.type = "github";
  inputs.src-rangequeries-master.owner = "vanyle";
  inputs.src-rangequeries-master.repo = "RangeQueriesNim";
  inputs.src-rangequeries-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rangequeries-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rangequeries-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rangequeries-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}