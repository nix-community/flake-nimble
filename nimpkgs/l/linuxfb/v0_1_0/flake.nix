{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';
  inputs.src-linuxfb-v0_1_0.flake = false;
  inputs.src-linuxfb-v0_1_0.type = "github";
  inputs.src-linuxfb-v0_1_0.owner = "luked99";
  inputs.src-linuxfb-v0_1_0.repo = "linuxfb.nim";
  inputs.src-linuxfb-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-linuxfb-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linuxfb-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linuxfb-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}