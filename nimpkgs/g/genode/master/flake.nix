{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-master.flake = false;
  inputs.src-genode-master.type = "other";
  inputs.src-genode-master.owner = "~ehmry";
  inputs.src-genode-master.repo = "nim_genode";
  inputs.src-genode-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-genode-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}