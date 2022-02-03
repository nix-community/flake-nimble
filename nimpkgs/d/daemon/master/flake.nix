{
  description = ''Cross-platform process daemonization library'';
  inputs.src-daemon-master.flake = false;
  inputs.src-daemon-master.type = "github";
  inputs.src-daemon-master.owner = "status-im";
  inputs.src-daemon-master.repo = "nim-daemon";
  inputs.src-daemon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-daemon-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-daemon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}