{
  description = ''A loose, direct to object json parser with hooks.'';
  inputs.src-jsony-master.flake = false;
  inputs.src-jsony-master.type = "github";
  inputs.src-jsony-master.owner = "treeform";
  inputs.src-jsony-master.repo = "jsony";
  inputs.src-jsony-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jsony-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsony-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}