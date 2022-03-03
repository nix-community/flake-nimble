{
  description = ''A modular GUI toolkit for rapid'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rdgui-master.flake = false;
  inputs.src-rdgui-master.type = "github";
  inputs.src-rdgui-master.owner = "liquid600pgm";
  inputs.src-rdgui-master.repo = "rdgui";
  inputs.src-rdgui-master.ref = "refs/heads/master";
  inputs.src-rdgui-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."rapid".type = "github";
  # inputs."rapid".owner = "riinr";
  # inputs."rapid".repo = "flake-nimble";
  # inputs."rapid".ref = "flake-pinning";
  # inputs."rapid".dir = "nimpkgs/r/rapid";
  # inputs."rapid".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rapid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rdgui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rdgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rdgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}