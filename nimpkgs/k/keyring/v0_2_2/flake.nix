{
  description = ''Cross-platform access to OS keychain'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-keyring-v0_2_2.flake = false;
  inputs.src-keyring-v0_2_2.type = "github";
  inputs.src-keyring-v0_2_2.owner = "iffy";
  inputs.src-keyring-v0_2_2.repo = "nim-keyring";
  inputs.src-keyring-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-keyring-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."dbus".type = "github";
  inputs."dbus".owner = "riinr";
  inputs."dbus".repo = "flake-nimble";
  inputs."dbus".ref = "flake-pinning";
  inputs."dbus".dir = "nimpkgs/d/dbus";
  inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-keyring-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keyring-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-keyring-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}