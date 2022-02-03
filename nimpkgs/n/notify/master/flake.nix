{
  description = ''A wrapper to notification libraries'';
  inputs.src-notify-master.flake = false;
  inputs.src-notify-master.type = "github";
  inputs.src-notify-master.owner = "xbello";
  inputs.src-notify-master.repo = "notify-nim";
  inputs.src-notify-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-notify-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}