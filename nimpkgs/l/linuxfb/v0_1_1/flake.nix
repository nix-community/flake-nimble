{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';
  inputs.src-linuxfb-v0_1_1.flake = false;
  inputs.src-linuxfb-v0_1_1.type = "github";
  inputs.src-linuxfb-v0_1_1.owner = "luked99";
  inputs.src-linuxfb-v0_1_1.repo = "linuxfb.nim";
  inputs.src-linuxfb-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-linuxfb-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linuxfb-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linuxfb-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}