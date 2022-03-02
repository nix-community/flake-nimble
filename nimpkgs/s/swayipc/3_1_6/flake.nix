{
  description = ''IPC interface to sway (or i3) compositors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-swayipc-3_1_6.flake = false;
  inputs.src-swayipc-3_1_6.type = "github";
  inputs.src-swayipc-3_1_6.owner = "disruptek";
  inputs.src-swayipc-3_1_6.repo = "swayipc";
  inputs.src-swayipc-3_1_6.ref = "refs/tags/3.1.6";
  inputs.src-swayipc-3_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-swayipc-3_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-3_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-3_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}