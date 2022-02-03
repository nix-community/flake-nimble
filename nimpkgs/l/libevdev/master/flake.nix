{
  description = ''Wrapper for libevdev, Linux input device processing library'';
  inputs.src-libevdev-master.flake = false;
  inputs.src-libevdev-master.type = "github";
  inputs.src-libevdev-master.owner = "luked99";
  inputs.src-libevdev-master.repo = "libevdev.nim";
  inputs.src-libevdev-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libevdev-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libevdev-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libevdev-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}