{
  description = ''Websockets wrapper for nim js backend.'';
  inputs.src-jswebsockets-master.flake = false;
  inputs.src-jswebsockets-master.type = "github";
  inputs.src-jswebsockets-master.owner = "stisa";
  inputs.src-jswebsockets-master.repo = "jswebsockets";
  inputs.src-jswebsockets-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jswebsockets-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jswebsockets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jswebsockets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}