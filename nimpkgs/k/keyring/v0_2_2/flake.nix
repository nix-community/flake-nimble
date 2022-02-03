{
  description = ''Cross-platform access to OS keychain'';
  inputs.src-keyring-v0_2_2.flake = false;
  inputs.src-keyring-v0_2_2.type = "github";
  inputs.src-keyring-v0_2_2.owner = "iffy";
  inputs.src-keyring-v0_2_2.repo = "nim-keyring";
  inputs.src-keyring-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."dbus".url = "path:../../../d/dbus";
  inputs."dbus".type = "github";
  inputs."dbus".owner = "riinr";
  inputs."dbus".repo = "flake-nimble";
  inputs."dbus".ref = "flake-pinning";
  inputs."dbus".dir = "nimpkgs/d/dbus";

  outputs = { self, nixpkgs, src-keyring-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keyring-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-keyring-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}