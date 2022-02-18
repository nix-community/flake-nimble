{
  description = ''Desktop notifications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-notification-v0_1_0.flake = false;
  inputs.src-notification-v0_1_0.type = "github";
  inputs.src-notification-v0_1_0.owner = "SolitudeSF";
  inputs.src-notification-v0_1_0.repo = "notification";
  inputs.src-notification-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."https://github.com/solitudesf/nim-dbus".type = "github";
  inputs."https://github.com/solitudesf/nim-dbus".owner = "riinr";
  inputs."https://github.com/solitudesf/nim-dbus".repo = "flake-nimble";
  inputs."https://github.com/solitudesf/nim-dbus".ref = "flake-pinning";
  inputs."https://github.com/solitudesf/nim-dbus".dir = "nimpkgs/h/https://github.com/solitudesf/nim-dbus";

  
  inputs."imageman".type = "github";
  inputs."imageman".owner = "riinr";
  inputs."imageman".repo = "flake-nimble";
  inputs."imageman".ref = "flake-pinning";
  inputs."imageman".dir = "nimpkgs/i/imageman";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notification-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notification-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notification-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}