{
  description = ''curl statistics made simple '';
  inputs.src-httpstat-master.flake = false;
  inputs.src-httpstat-master.type = "github";
  inputs.src-httpstat-master.owner = "ucpr";
  inputs.src-httpstat-master.repo = "httpstat";
  inputs.src-httpstat-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-httpstat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpstat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpstat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}