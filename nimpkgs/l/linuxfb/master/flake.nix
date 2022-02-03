{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';
  inputs.src-linuxfb-master.flake = false;
  inputs.src-linuxfb-master.type = "github";
  inputs.src-linuxfb-master.owner = "luked99";
  inputs.src-linuxfb-master.repo = "linuxfb.nim";
  inputs.src-linuxfb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-linuxfb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linuxfb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linuxfb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}