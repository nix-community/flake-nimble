{
  description = ''i3 IPC client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-i3ipc-master.flake = false;
  inputs.src-i3ipc-master.type = "github";
  inputs.src-i3ipc-master.owner = "FedericoCeratto";
  inputs.src-i3ipc-master.repo = "nim-i3ipc";
  inputs.src-i3ipc-master.ref = "refs/heads/master";
  inputs.src-i3ipc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-i3ipc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-i3ipc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-i3ipc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}