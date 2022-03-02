{
  description = ''Websocket for httpx.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-websocketx-v0_1_0.flake = false;
  inputs.src-websocketx-v0_1_0.type = "github";
  inputs.src-websocketx-v0_1_0.owner = "xflywind";
  inputs.src-websocketx-v0_1_0.repo = "websocketx";
  inputs.src-websocketx-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-websocketx-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ws".type = "github";
  # inputs."ws".owner = "riinr";
  # inputs."ws".repo = "flake-nimble";
  # inputs."ws".ref = "flake-pinning";
  # inputs."ws".dir = "nimpkgs/w/ws";
  # inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."httpx".type = "github";
  # inputs."httpx".owner = "riinr";
  # inputs."httpx".repo = "flake-nimble";
  # inputs."httpx".ref = "flake-pinning";
  # inputs."httpx".dir = "nimpkgs/h/httpx";
  # inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-websocketx-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocketx-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websocketx-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}