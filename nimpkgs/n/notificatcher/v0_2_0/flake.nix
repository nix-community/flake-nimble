{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-notificatcher-v0_2_0.flake = false;
  inputs.src-notificatcher-v0_2_0.type = "github";
  inputs.src-notificatcher-v0_2_0.owner = "PMunch";
  inputs.src-notificatcher-v0_2_0.repo = "notificatcher";
  inputs.src-notificatcher-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-notificatcher-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."dbus".type = "github";
  # inputs."dbus".owner = "riinr";
  # inputs."dbus".repo = "flake-nimble";
  # inputs."dbus".ref = "flake-pinning";
  # inputs."dbus".dir = "nimpkgs/d/dbus";
  # inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/pmunch/docopt.nim".type = "github";
  # inputs."https://github.com/pmunch/docopt.nim".owner = "riinr";
  # inputs."https://github.com/pmunch/docopt.nim".repo = "flake-nimble";
  # inputs."https://github.com/pmunch/docopt.nim".ref = "flake-pinning";
  # inputs."https://github.com/pmunch/docopt.nim".dir = "nimpkgs/h/https://github.com/pmunch/docopt.nim";
  # inputs."https://github.com/pmunch/docopt.nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/pmunch/docopt.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notificatcher-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notificatcher-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notificatcher-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}