{
  description = ''Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs'';
  inputs.src-nimha-v0_4_5.flake = false;
  inputs.src-nimha-v0_4_5.type = "github";
  inputs.src-nimha-v0_4_5.owner = "ThomasTJdev";
  inputs.src-nimha-v0_4_5.repo = "nim_homeassistant";
  inputs.src-nimha-v0_4_5.ref = "refs/tags/v0.4.5";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  
  inputs."recaptcha".type = "github";
  inputs."recaptcha".owner = "riinr";
  inputs."recaptcha".repo = "flake-nimble";
  inputs."recaptcha".ref = "flake-pinning";
  inputs."recaptcha".dir = "nimpkgs/r/recaptcha";

  
  inputs."bcrypt".type = "github";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".repo = "flake-nimble";
  inputs."bcrypt".ref = "flake-pinning";
  inputs."bcrypt".dir = "nimpkgs/b/bcrypt";

  
  inputs."multicast".type = "github";
  inputs."multicast".owner = "riinr";
  inputs."multicast".repo = "flake-nimble";
  inputs."multicast".ref = "flake-pinning";
  inputs."multicast".dir = "nimpkgs/m/multicast";

  
  inputs."websocket".type = "github";
  inputs."websocket".owner = "riinr";
  inputs."websocket".repo = "flake-nimble";
  inputs."websocket".ref = "flake-pinning";
  inputs."websocket".dir = "nimpkgs/w/websocket";

  
  inputs."wiringpinim".type = "github";
  inputs."wiringpinim".owner = "riinr";
  inputs."wiringpinim".repo = "flake-nimble";
  inputs."wiringpinim".ref = "flake-pinning";
  inputs."wiringpinim".dir = "nimpkgs/w/wiringpinim";

  
  inputs."xiaomi".type = "github";
  inputs."xiaomi".owner = "riinr";
  inputs."xiaomi".repo = "flake-nimble";
  inputs."xiaomi".ref = "flake-pinning";
  inputs."xiaomi".dir = "nimpkgs/x/xiaomi";

  outputs = { self, nixpkgs, src-nimha-v0_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimha-v0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimha-v0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}