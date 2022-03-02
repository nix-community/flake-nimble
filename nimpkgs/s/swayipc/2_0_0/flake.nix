{
  description = ''IPC interface to sway (or i3) compositors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-swayipc-2_0_0.flake = false;
  inputs.src-swayipc-2_0_0.type = "github";
  inputs.src-swayipc-2_0_0.owner = "disruptek";
  inputs.src-swayipc-2_0_0.repo = "swayipc";
  inputs.src-swayipc-2_0_0.ref = "refs/tags/2.0.0";
  inputs.src-swayipc-2_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-swayipc-2_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}