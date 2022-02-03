{
  description = ''RESTful URI router'';
  inputs.src-nest-master.flake = false;
  inputs.src-nest-master.type = "github";
  inputs.src-nest-master.owner = "kedean";
  inputs.src-nest-master.repo = "nest";
  inputs.src-nest-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nest-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nest-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nest-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}