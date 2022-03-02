{
  description = ''Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimha-v0_4_4.flake = false;
  inputs.src-nimha-v0_4_4.type = "github";
  inputs.src-nimha-v0_4_4.owner = "ThomasTJdev";
  inputs.src-nimha-v0_4_4.repo = "nim_homeassistant";
  inputs.src-nimha-v0_4_4.ref = "refs/tags/v0.4.4";
  inputs.src-nimha-v0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jester".type = "github";
  # inputs."jester".owner = "riinr";
  # inputs."jester".repo = "flake-nimble";
  # inputs."jester".ref = "flake-pinning";
  # inputs."jester".dir = "nimpkgs/j/jester";
  # inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."httpbeast".type = "github";
  # inputs."httpbeast".owner = "riinr";
  # inputs."httpbeast".repo = "flake-nimble";
  # inputs."httpbeast".ref = "flake-pinning";
  # inputs."httpbeast".dir = "nimpkgs/h/httpbeast";
  # inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."recaptcha".type = "github";
  # inputs."recaptcha".owner = "riinr";
  # inputs."recaptcha".repo = "flake-nimble";
  # inputs."recaptcha".ref = "flake-pinning";
  # inputs."recaptcha".dir = "nimpkgs/r/recaptcha";
  # inputs."recaptcha".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."recaptcha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."bcrypt".type = "github";
  # inputs."bcrypt".owner = "riinr";
  # inputs."bcrypt".repo = "flake-nimble";
  # inputs."bcrypt".ref = "flake-pinning";
  # inputs."bcrypt".dir = "nimpkgs/b/bcrypt";
  # inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."multicast".type = "github";
  # inputs."multicast".owner = "riinr";
  # inputs."multicast".repo = "flake-nimble";
  # inputs."multicast".ref = "flake-pinning";
  # inputs."multicast".dir = "nimpkgs/m/multicast";
  # inputs."multicast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."multicast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."websocket".type = "github";
  # inputs."websocket".owner = "riinr";
  # inputs."websocket".repo = "flake-nimble";
  # inputs."websocket".ref = "flake-pinning";
  # inputs."websocket".dir = "nimpkgs/w/websocket";
  # inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."wiringpinim".type = "github";
  # inputs."wiringpinim".owner = "riinr";
  # inputs."wiringpinim".repo = "flake-nimble";
  # inputs."wiringpinim".ref = "flake-pinning";
  # inputs."wiringpinim".dir = "nimpkgs/w/wiringpinim";
  # inputs."wiringpinim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."wiringpinim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."xiaomi".type = "github";
  # inputs."xiaomi".owner = "riinr";
  # inputs."xiaomi".repo = "flake-nimble";
  # inputs."xiaomi".ref = "flake-pinning";
  # inputs."xiaomi".dir = "nimpkgs/x/xiaomi";
  # inputs."xiaomi".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."xiaomi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimha-v0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimha-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimha-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}