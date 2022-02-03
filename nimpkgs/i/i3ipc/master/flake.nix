{
  description = ''i3 IPC client library'';
  inputs.src-i3ipc-master.flake = false;
  inputs.src-i3ipc-master.type = "github";
  inputs.src-i3ipc-master.owner = "FedericoCeratto";
  inputs.src-i3ipc-master.repo = "nim-i3ipc";
  inputs.src-i3ipc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-i3ipc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-i3ipc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-i3ipc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}