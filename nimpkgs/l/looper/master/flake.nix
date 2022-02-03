{
  description = ''for loop macros'';
  inputs.src-looper-master.flake = false;
  inputs.src-looper-master.type = "github";
  inputs.src-looper-master.owner = "planetis-m";
  inputs.src-looper-master.repo = "looper";
  inputs.src-looper-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-looper-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-looper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-looper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}