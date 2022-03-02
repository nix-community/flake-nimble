{
  description = ''Wrapper for libevdev, Linux input device processing library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libevdev-master.flake = false;
  inputs.src-libevdev-master.type = "github";
  inputs.src-libevdev-master.owner = "luked99";
  inputs.src-libevdev-master.repo = "libevdev.nim";
  inputs.src-libevdev-master.ref = "refs/heads/master";
  inputs.src-libevdev-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libevdev-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libevdev-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libevdev-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}