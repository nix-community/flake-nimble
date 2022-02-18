{
  description = ''Cross-platform access to OS keychain'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-keyring-master.flake = false;
  inputs.src-keyring-master.type = "github";
  inputs.src-keyring-master.owner = "iffy";
  inputs.src-keyring-master.repo = "nim-keyring";
  inputs.src-keyring-master.ref = "refs/heads/master";
  
  
  inputs."dbus".type = "github";
  inputs."dbus".owner = "riinr";
  inputs."dbus".repo = "flake-nimble";
  inputs."dbus".ref = "flake-pinning";
  inputs."dbus".dir = "nimpkgs/d/dbus";

  outputs = { self, nixpkgs, flakeNimbleLib, src-keyring-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keyring-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-keyring-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}