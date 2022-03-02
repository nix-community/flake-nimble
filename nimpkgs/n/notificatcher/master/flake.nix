{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-notificatcher-master.flake = false;
  inputs.src-notificatcher-master.type = "github";
  inputs.src-notificatcher-master.owner = "PMunch";
  inputs.src-notificatcher-master.repo = "notificatcher";
  inputs.src-notificatcher-master.ref = "refs/heads/master";
  inputs.src-notificatcher-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-notificatcher-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notificatcher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notificatcher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}