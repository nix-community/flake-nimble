{
  description = ''proc to join (and leave) a multicast group'';
  inputs.src-multicast-master.flake = false;
  inputs.src-multicast-master.type = "github";
  inputs.src-multicast-master.owner = "enthus1ast";
  inputs.src-multicast-master.repo = "nimMulticast";
  inputs.src-multicast-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-multicast-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-multicast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-multicast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}