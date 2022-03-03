{
  description = ''IPC interface to sway (or i3) compositors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-swayipc-3_1_5.flake = false;
  inputs.src-swayipc-3_1_5.type = "github";
  inputs.src-swayipc-3_1_5.owner = "disruptek";
  inputs.src-swayipc-3_1_5.repo = "swayipc";
  inputs.src-swayipc-3_1_5.ref = "refs/tags/3.1.5";
  inputs.src-swayipc-3_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nesm".type = "github";
  # inputs."nesm".owner = "riinr";
  # inputs."nesm".repo = "flake-nimble";
  # inputs."nesm".ref = "flake-pinning";
  # inputs."nesm".dir = "nimpkgs/n/nesm";
  # inputs."nesm".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nesm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-swayipc-3_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-3_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-3_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}