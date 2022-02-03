{
  description = ''A cache library.'';
  inputs.src-cache-master.flake = false;
  inputs.src-cache-master.type = "github";
  inputs.src-cache-master.owner = "planety";
  inputs.src-cache-master.repo = "cached";
  inputs.src-cache-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cache-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}