{
  description = ''Cross-platform access to OS keychain'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-keyring-v0_2_1.flake = false;
  inputs.src-keyring-v0_2_1.type = "github";
  inputs.src-keyring-v0_2_1.owner = "iffy";
  inputs.src-keyring-v0_2_1.repo = "nim-keyring";
  inputs.src-keyring-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."dbus".type = "github";
  inputs."dbus".owner = "riinr";
  inputs."dbus".repo = "flake-nimble";
  inputs."dbus".ref = "flake-pinning";
  inputs."dbus".dir = "nimpkgs/d/dbus";

  outputs = { self, nixpkgs, flakeNimbleLib, src-keyring-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keyring-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-keyring-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}