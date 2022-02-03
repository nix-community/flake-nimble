{
  description = ''Systemd service notification helper'';
  inputs.src-sdnotify-master.flake = false;
  inputs.src-sdnotify-master.type = "github";
  inputs.src-sdnotify-master.owner = "FedericoCeratto";
  inputs.src-sdnotify-master.repo = "nim-sdnotify";
  inputs.src-sdnotify-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sdnotify-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdnotify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdnotify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}