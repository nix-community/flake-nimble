{
  description = ''unittest fork focused on parallel test execution'';
  inputs.src-unittest2-master.flake = false;
  inputs.src-unittest2-master.type = "github";
  inputs.src-unittest2-master.owner = "status-im";
  inputs.src-unittest2-master.repo = "nim-unittest2";
  inputs.src-unittest2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unittest2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unittest2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unittest2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}