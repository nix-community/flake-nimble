{
  description = ''IPC interface to sway (or i3) compositors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-swayipc-2_0_1.flake = false;
  inputs.src-swayipc-2_0_1.type = "github";
  inputs.src-swayipc-2_0_1.owner = "disruptek";
  inputs.src-swayipc-2_0_1.repo = "swayipc";
  inputs.src-swayipc-2_0_1.ref = "refs/tags/2.0.1";
  inputs.src-swayipc-2_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-swayipc-2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}