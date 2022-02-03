{
  description = ''A tiny static file web server.'';
  inputs.src-srv-master.flake = false;
  inputs.src-srv-master.type = "github";
  inputs.src-srv-master.owner = "me7";
  inputs.src-srv-master.repo = "srv";
  inputs.src-srv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-srv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-srv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-srv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}