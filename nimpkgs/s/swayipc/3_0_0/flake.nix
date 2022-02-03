{
  description = ''IPC interface to sway (or i3) compositors'';
  inputs.src-swayipc-3_0_0.flake = false;
  inputs.src-swayipc-3_0_0.type = "github";
  inputs.src-swayipc-3_0_0.owner = "disruptek";
  inputs.src-swayipc-3_0_0.repo = "swayipc";
  inputs.src-swayipc-3_0_0.ref = "refs/tags/3.0.0";
  
  outputs = { self, nixpkgs, src-swayipc-3_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-3_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-swayipc-3_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}