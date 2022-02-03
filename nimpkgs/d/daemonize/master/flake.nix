{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
  inputs.src-daemonize-master.flake = false;
  inputs.src-daemonize-master.type = "github";
  inputs.src-daemonize-master.owner = "OpenSystemsLab";
  inputs.src-daemonize-master.repo = "daemonize.nim";
  inputs.src-daemonize-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-daemonize-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemonize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-daemonize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}