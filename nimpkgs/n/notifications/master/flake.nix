{
  description = ''Library for displaying notifications on the desktop'';
  inputs.src-notifications-master.flake = false;
  inputs.src-notifications-master.type = "github";
  inputs.src-notifications-master.owner = "dom96";
  inputs.src-notifications-master.repo = "notifications";
  inputs.src-notifications-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-notifications-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notifications-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notifications-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}