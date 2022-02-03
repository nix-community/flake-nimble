{
  description = ''A pure-nim implementation of the STOMP protocol for machine messaging.'';
  inputs.src-stomp-master.flake = false;
  inputs.src-stomp-master.type = "github";
  inputs.src-stomp-master.owner = "mahlonsmith";
  inputs.src-stomp-master.repo = "nim-stomp";
  inputs.src-stomp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stomp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stomp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stomp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}