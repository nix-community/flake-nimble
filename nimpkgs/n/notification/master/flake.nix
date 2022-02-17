{
  description = ''Desktop notifications'';
  inputs.src-notification-master.flake = false;
  inputs.src-notification-master.type = "github";
  inputs.src-notification-master.owner = "SolitudeSF";
  inputs.src-notification-master.repo = "notification";
  inputs.src-notification-master.ref = "refs/heads/master";
  
  
  inputs."dbus".type = "github";
  inputs."dbus".owner = "riinr";
  inputs."dbus".repo = "flake-nimble";
  inputs."dbus".ref = "flake-pinning";
  inputs."dbus".dir = "nimpkgs/d/dbus";

  
  inputs."imageman".type = "github";
  inputs."imageman".owner = "riinr";
  inputs."imageman".repo = "flake-nimble";
  inputs."imageman".ref = "flake-pinning";
  inputs."imageman".dir = "nimpkgs/i/imageman";

  outputs = { self, nixpkgs, src-notification-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notification-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notification-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}