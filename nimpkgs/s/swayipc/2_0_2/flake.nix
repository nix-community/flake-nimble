{
  description = ''IPC interface to sway (or i3) compositors'';
  inputs.src-swayipc-2_0_2.flake = false;
  inputs.src-swayipc-2_0_2.type = "github";
  inputs.src-swayipc-2_0_2.owner = "disruptek";
  inputs.src-swayipc-2_0_2.repo = "swayipc";
  inputs.src-swayipc-2_0_2.ref = "refs/tags/2.0.2";
  
  outputs = { self, nixpkgs, src-swayipc-2_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-swayipc-2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}