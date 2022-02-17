{
  description = ''Cross-platform access to OS keychain'';
  inputs.src-keyring-v0_1_0.flake = false;
  inputs.src-keyring-v0_1_0.type = "github";
  inputs.src-keyring-v0_1_0.owner = "iffy";
  inputs.src-keyring-v0_1_0.repo = "nim-keyring";
  inputs.src-keyring-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."https://github.com/iffy/nim-dbus.git".type = "github";
  inputs."https://github.com/iffy/nim-dbus.git".owner = "riinr";
  inputs."https://github.com/iffy/nim-dbus.git".repo = "flake-nimble";
  inputs."https://github.com/iffy/nim-dbus.git".ref = "flake-pinning";
  inputs."https://github.com/iffy/nim-dbus.git".dir = "nimpkgs/h/https://github.com/iffy/nim-dbus.git";

  outputs = { self, nixpkgs, src-keyring-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keyring-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-keyring-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}