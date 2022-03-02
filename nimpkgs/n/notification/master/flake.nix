{
  description = ''Desktop notifications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-notification-master.flake = false;
  inputs.src-notification-master.type = "github";
  inputs.src-notification-master.owner = "SolitudeSF";
  inputs.src-notification-master.repo = "notification";
  inputs.src-notification-master.ref = "refs/heads/master";
  inputs.src-notification-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."dbus".type = "github";
  # inputs."dbus".owner = "riinr";
  # inputs."dbus".repo = "flake-nimble";
  # inputs."dbus".ref = "flake-pinning";
  # inputs."dbus".dir = "nimpkgs/d/dbus";
  # inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."imageman".type = "github";
  # inputs."imageman".owner = "riinr";
  # inputs."imageman".repo = "flake-nimble";
  # inputs."imageman".ref = "flake-pinning";
  # inputs."imageman".dir = "nimpkgs/i/imageman";
  # inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notification-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notification-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notification-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}