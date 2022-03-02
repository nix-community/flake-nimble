{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-linuxfb-master.flake = false;
  inputs.src-linuxfb-master.type = "github";
  inputs.src-linuxfb-master.owner = "luked99";
  inputs.src-linuxfb-master.repo = "linuxfb.nim";
  inputs.src-linuxfb-master.ref = "refs/heads/master";
  inputs.src-linuxfb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-linuxfb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linuxfb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-linuxfb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}